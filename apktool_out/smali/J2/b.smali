.class public final LJ2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ2/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;LJ2/i;)LJ2/a;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static/range {p0 .. p0}, LJ2/b;->d(Landroid/content/Context;)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    array-length v3, v2

    .line 9
    const/4 v4, 0x0

    .line 10
    move v5, v4

    .line 11
    :goto_0
    const/4 v6, 0x0

    .line 12
    if-ge v5, v3, :cond_5

    .line 13
    .line 14
    aget-object v7, v2, v5

    .line 15
    .line 16
    move v8, v4

    .line 17
    :goto_1
    add-int/lit8 v9, v8, 0x1

    .line 18
    .line 19
    const/4 v10, 0x5

    .line 20
    if-ge v8, v10, :cond_0

    .line 21
    .line 22
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    .line 23
    .line 24
    new-instance v11, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v8, v11, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    move-object v6, v8

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move v8, v9

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_2
    if-nez v6, :cond_1

    .line 37
    .line 38
    move-object/from16 v12, p2

    .line 39
    .line 40
    move/from16 v16, v1

    .line 41
    .line 42
    move-object/from16 v1, p3

    .line 43
    .line 44
    goto :goto_5

    .line 45
    :cond_1
    move v8, v4

    .line 46
    :goto_3
    add-int/lit8 v9, v8, 0x1

    .line 47
    .line 48
    if-ge v8, v10, :cond_4

    .line 49
    .line 50
    array-length v8, v0

    .line 51
    move v11, v4

    .line 52
    :goto_4
    if-ge v11, v8, :cond_3

    .line 53
    .line 54
    aget-object v12, v0, v11

    .line 55
    .line 56
    new-instance v13, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v14, "lib"

    .line 59
    .line 60
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-char v14, Ljava/io/File;->separatorChar:C

    .line 64
    .line 65
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-object/from16 v12, p2

    .line 75
    .line 76
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    const-string v14, "Looking for %s in APK %s..."

    .line 84
    .line 85
    const/4 v15, 0x2

    .line 86
    new-array v15, v15, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v13, v15, v4

    .line 89
    .line 90
    aput-object v7, v15, v1

    .line 91
    .line 92
    move/from16 v16, v1

    .line 93
    .line 94
    move-object/from16 v1, p3

    .line 95
    .line 96
    invoke-virtual {v1, v14, v15}, LJ2/i;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    if-eqz v13, :cond_2

    .line 104
    .line 105
    new-instance v0, LJ2/a;

    .line 106
    .line 107
    invoke-direct {v0, v6, v13}, LJ2/a;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 112
    .line 113
    move/from16 v1, v16

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_3
    move-object/from16 v12, p2

    .line 117
    .line 118
    move/from16 v16, v1

    .line 119
    .line 120
    move-object/from16 v1, p3

    .line 121
    .line 122
    move v8, v9

    .line 123
    move/from16 v1, v16

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    move-object/from16 v12, p2

    .line 127
    .line 128
    move/from16 v16, v1

    .line 129
    .line 130
    move-object/from16 v1, p3

    .line 131
    .line 132
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    .line 134
    .line 135
    :catch_1
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 136
    .line 137
    move/from16 v1, v16

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_5
    return-object v6
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "lib"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "([^\\"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "]*)"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, LJ2/b;->d(Landroid/content/Context;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    array-length v1, p0

    .line 50
    const/4 v2, 0x0

    .line 51
    :goto_0
    if-ge v2, v1, :cond_2

    .line 52
    .line 53
    aget-object v3, p0, v2

    .line 54
    .line 55
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    .line 56
    .line 57
    new-instance v5, Ljava/io/File;

    .line 58
    .line 59
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-direct {v4, v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {p1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_0

    .line 95
    .line 96
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    new-array p0, p0, [Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, [Ljava/lang/String;

    .line 118
    .line 119
    return-object p0
.end method

.method public static d(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x1

    .line 14
    add-int/2addr v1, v2

    .line 15
    new-array v1, v1, [Ljava/lang/String;

    .line 16
    .line 17
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object p0, v1, v3

    .line 21
    .line 22
    array-length p0, v0

    .line 23
    invoke-static {v0, v3, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 28
    .line 29
    filled-new-array {p0}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method


# virtual methods
.method public installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;LJ2/i;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetWorldReadable"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    :try_start_0
    invoke-static {v0, v1, v2, v4}, LJ2/b;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;LJ2/i;)LJ2/a;

    .line 15
    .line 16
    .line 17
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 18
    if-eqz v8, :cond_5

    .line 19
    .line 20
    move v0, v5

    .line 21
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 22
    .line 23
    iget-object v9, v8, LJ2/a;->a:Ljava/util/zip/ZipFile;

    .line 24
    .line 25
    const/4 v10, 0x5

    .line 26
    if-ge v0, v10, :cond_3

    .line 27
    .line 28
    :try_start_1
    const-string v0, "Found %s! Extracting..."

    .line 29
    .line 30
    new-array v10, v6, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v2, v10, v5

    .line 33
    .line 34
    invoke-virtual {v4, v0, v10}, LJ2/i;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 44
    .line 45
    .line 46
    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object v7, v8

    .line 53
    goto/16 :goto_b

    .line 54
    .line 55
    :cond_0
    :try_start_3
    iget-object v0, v8, LJ2/a;->b:Ljava/util/zip/ZipEntry;

    .line 56
    .line 57
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 58
    .line 59
    .line 60
    move-result-object v10
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 61
    :try_start_4
    new-instance v11, Ljava/io/FileOutputStream;

    .line 62
    .line 63
    invoke-direct {v11, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 64
    .line 65
    .line 66
    const/16 v0, 0x1000

    .line 67
    .line 68
    :try_start_5
    new-array v0, v0, [B

    .line 69
    .line 70
    const-wide/16 v12, 0x0

    .line 71
    .line 72
    :goto_1
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    const/4 v15, -0x1

    .line 77
    if-ne v14, v15, :cond_2

    .line 78
    .line 79
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 90
    .line 91
    .line 92
    move-result-wide v14
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 93
    cmp-long v0, v12, v14

    .line 94
    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    :try_start_6
    invoke-static {v10}, LJ2/b;->a(Ljava/io/Closeable;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    invoke-static {v11}, LJ2/b;->a(Ljava/io/Closeable;)V

    .line 101
    .line 102
    .line 103
    goto :goto_8

    .line 104
    :cond_1
    invoke-static {v10}, LJ2/b;->a(Ljava/io/Closeable;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v11}, LJ2/b;->a(Ljava/io/Closeable;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v6}, Ljava/io/File;->setWritable(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 117
    .line 118
    .line 119
    :goto_3
    :try_start_7
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 120
    .line 121
    .line 122
    goto :goto_9

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    :goto_4
    move-object v7, v10

    .line 125
    goto :goto_5

    .line 126
    :cond_2
    :try_start_8
    invoke-virtual {v11, v0, v5, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 127
    .line 128
    .line 129
    int-to-long v14, v14

    .line 130
    add-long/2addr v12, v14

    .line 131
    goto :goto_1

    .line 132
    :catchall_2
    move-exception v0

    .line 133
    move-object v11, v7

    .line 134
    goto :goto_4

    .line 135
    :catch_0
    move-object v11, v7

    .line 136
    goto :goto_6

    .line 137
    :catch_1
    move-object v11, v7

    .line 138
    goto :goto_7

    .line 139
    :catchall_3
    move-exception v0

    .line 140
    move-object v11, v7

    .line 141
    goto :goto_5

    .line 142
    :catch_2
    move-object v10, v7

    .line 143
    move-object v11, v10

    .line 144
    goto :goto_6

    .line 145
    :catch_3
    move-object v10, v7

    .line 146
    move-object v11, v10

    .line 147
    goto :goto_7

    .line 148
    :goto_5
    :try_start_9
    invoke-static {v7}, LJ2/b;->a(Ljava/io/Closeable;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v11}, LJ2/b;->a(Ljava/io/Closeable;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :catch_4
    :goto_6
    invoke-static {v10}, LJ2/b;->a(Ljava/io/Closeable;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catch_5
    :goto_7
    invoke-static {v10}, LJ2/b;->a(Ljava/io/Closeable;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :catch_6
    :goto_8
    move v0, v1

    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_3
    const-string v0, "FATAL! Couldn\'t extract the library from the APK!"

    .line 167
    .line 168
    invoke-virtual {v4, v0}, LJ2/i;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 169
    .line 170
    .line 171
    if-eqz v9, :cond_4

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catch_7
    :cond_4
    :goto_9
    return-void

    .line 175
    :cond_5
    :try_start_a
    invoke-static {v0, v2}, LJ2/b;->c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 179
    goto :goto_a

    .line 180
    :catch_8
    move-exception v0

    .line 181
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    filled-new-array {v0}, [Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_a
    new-instance v3, Lcom/getkeepsafe/relinker/MissingLibraryException;

    .line 190
    .line 191
    invoke-direct {v3, v2, v1, v0}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 195
    :catchall_4
    move-exception v0

    .line 196
    :goto_b
    if-eqz v7, :cond_6

    .line 197
    .line 198
    :try_start_c
    iget-object v1, v7, LJ2/a;->a:Ljava/util/zip/ZipFile;

    .line 199
    .line 200
    if-eqz v1, :cond_6

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 203
    .line 204
    .line 205
    :catch_9
    :cond_6
    throw v0
.end method
