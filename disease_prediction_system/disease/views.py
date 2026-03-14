from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.conf import settings
from django.db.models import Q
from django.core.files.storage import FileSystemStorage
from django.contrib import messages
from django.db import connection
import os
import numpy as np # linear algebra
import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)
from sklearn.metrics import mean_squared_error
import seaborn as sns
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import confusion_matrix
from sklearn.metrics import precision_recall_fscore_support
import json
from sklearn.naive_bayes import GaussianNB
from sklearn import svm
from sklearn.neighbors import KNeighborsClassifier
from sklearn.tree import DecisionTreeClassifier

# DataTraining
data = pd.read_csv(str(os.getcwd())+'/media/Training.csv', header=0, encoding = 'unicode_escape')
df = pd.DataFrame(data)
cols = df.columns
cols = cols[:-1]
x = df[cols]
y = df['prognosis']
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.33, random_state=42)

dt = DecisionTreeClassifier()
clf_dt=dt.fit(x_train,y_train)

indices = [i for i in range(132)]
symptoms = df.columns.values[:-1]
dictionary = dict(zip(symptoms,indices))


# Create your views here.

def datasets(request):
    #### Read CSV File and Upload into Database ####
    csv_data = pd.read_csv(str(os.getcwd())+'/media/disease.csv', header=0, encoding = 'unicode_escape')
    csv_data = csv_data.values.tolist()

    context = {
        "diseaselist": csv_data
    }

    # Message according medicines Role #
    context['heading'] = "Disease Details"
    return render(request, 'disease-list.html', context)

def getDisease(request):
    #### Read CSV File and Upload into Database ####
    csv_data = pd.read_csv(str(os.getcwd())+'/media/disease.csv', header=0, encoding = 'unicode_escape')
    dataset = csv_data
    csv_data = csv_data.values.tolist()
    disease_list = dataset['prognosis'].values.tolist()

    context = {
        "disease_list": disease_list,
    }

    # Message according medicines Role #
    context['heading'] = "All Disease List"
    return render(request, 'all-disease.html', context)

def analysis(request):
    #### Read CSV File and Upload into Database ####
    print(os.getcwd())
    csv_data = pd.read_csv(str(os.getcwd())+'/media/disease.csv', header=0, encoding = 'unicode_escape')
    dataset = csv_data
    csv_data = csv_data.values.tolist()
    disease_list = dataset['prognosis'].values.tolist()

    context = {
        "disease_list": disease_list,
        "diseaselist": csv_data,
        "typeofdata": type(dataset),
        "datashape": dataset.shape,
        "datahead": dataset.head(5),
        "datadescribe" : dataset.describe(),
        "datainfo": dataset.info(),
        "datasample": dataset.sample(5),
    }

    # Message according medicines Role #
    context['heading'] = "Disease Details"
    return render(request, 'analysis.html', context)

def prediction(request):
    context = {}
    user_symptoms = []

    header_columns = pd.read_csv(str(os.getcwd())+'/media/disease.csv', index_col=0, nrows=0).columns.tolist()
  
    ### Get the Database Configuration ####
    if (request.method == "POST"):
        ### Insert the File Details #####
        selected_symptoms = []
        if(request.POST['symptom1']!="") and (request.POST['symptom1'] not in selected_symptoms):
            selected_symptoms.append(request.POST['symptom1'])
        if(request.POST['symptom2']!="") and (request.POST['symptom2'] not in selected_symptoms):
            selected_symptoms.append(request.POST['symptom2'])
        if(request.POST['symptom3']!="") and (request.POST['symptom3'] not in selected_symptoms):
            selected_symptoms.append(request.POST['symptom3'])
        if(request.POST['symptom4']!="") and (request.POST['symptom4'] not in selected_symptoms):
            selected_symptoms.append(request.POST['symptom4'])
        if(request.POST['symptom5']!="") and (request.POST['symptom5'] not in selected_symptoms):
            selected_symptoms.append(request.POST['symptom5'])

        prediction = dataTraining(selected_symptoms)

       
        
        pcontext = {
            "prediction": prediction,
            "form_data": (selected_symptoms),
            "symptom1": request.POST['symptom1'],
            "symptom2": request.POST['symptom2'],
            "symptom3": request.POST['symptom3'],
            "symptom4": request.POST['symptom4'],
            "symptom5": request.POST['symptom5'],
            "symptom6": request.POST['symptom6'],
        }
        return render(request, 'prediction-result.html', pcontext)
    # Message according medicines Role #
    context['heading'] = "Disease Details"
    context['symptoms'] = header_columns
    return render(request, 'prediction.html', context)
    
def listToString(list):
    lst=[]
    for i in list:
        lst.append(i[0])
    return lst

def cumSumToString(list):
    lst=[]
    for i in list:
        lst.append(i)
    return lst
    
def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

def getFileData(id):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM files WHERE files_id = " + id)
    dataList = dictfetchall(cursor)
    return dataList[0]

def dataTraining(testData):

    user_input_symptoms = testData
    user_input_label = [0 for i in range(132)]
    for i in user_input_symptoms:
        idx = dictionary[i]
        user_input_label[idx] = 1

    user_input_label = np.array(user_input_label)
    user_input_label = user_input_label.reshape((-1,1)).transpose()
    return(dt.predict(user_input_label))
