from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.conf import settings
from django.db.models import Q
from django.core.files.storage import FileSystemStorage
from django.contrib import messages
from django.db import connection
import numpy as np # linear algebra
import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)
import datetime
import os

# Create your views here.

def listing(request):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM files")
    fileslist = dictfetchall(cursor)

    context = {
        "fileslist": fileslist
    }

    # Message according medicines Role #
    context['heading'] = "Uploaded Files Details";
    return render(request, 'files-details.html', context)

def lists(request):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM files")
    fileslist = dictfetchall(cursor)

    context = {
        "fileslist": fileslist
    }

    # Message according medicines Role #
    context['heading'] = "Uploaded Files Details";
    return render(request, 'files-list.html', context)

def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

def getData(id):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM files WHERE files_id = " + id)
    dataList = dictfetchall(cursor)
    return dataList[0];


def add(request):
    context = {
        "fn": "add",
        "heading": 'Add Files'
    }
    ### Get the Database Configuration ####
    if (request.method == "POST"):
        if(request.FILES and request.FILES['files_file']):
            filesFile = request.FILES['files_file']
            fs = FileSystemStorage()
            filename = fs.save(filesFile.name, filesFile)
            files_file = "uploads/"+str(filesFile)

        ### Insert the File Details #####
        cursor = connection.cursor()
        cursor.execute("""
        INSERT INTO files
        SET files_name=%s, files_file=%s, files_original_file_name=%s, files_desc=%s
        """, (
            request.POST['files_name'],
            files_file,
            filename,
            request.POST['files_desc']))
        fileID = cursor.lastrowid
        return redirect('files-listing')
    return render(request, 'files.html', context)

def delete(request, id):
    ### Delete the file data ####
    cursor = connection.cursor()
    sql = 'DELETE FROM files WHERE files_id=' + id
    cursor.execute(sql)

    messages.add_message(request, messages.INFO, "File and Disease Data Deleted succesfully !!!")
    return redirect('files-listing')
