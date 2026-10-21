.class public final LJ2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:LJ2/d;

.field public final c:LJ2/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, LJ2/j;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, LJ2/b;

    invoke-direct {v1}, LJ2/b;-><init>()V

    invoke-direct {p0, v0, v1}, LJ2/i;-><init>(LJ2/d;LJ2/c;)V

    return-void
.end method

.method public constructor <init>(LJ2/d;LJ2/c;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LJ2/i;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 6
    iput-object p1, p0, LJ2/i;->b:LJ2/d;

    .line 7
    iput-object p2, p0, LJ2/i;->c:LJ2/c;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null library installer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null library loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v6, 0x2

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v8, 0x1

    .line 4
    iget-object v9, p0, LJ2/i;->b:LJ2/d;

    .line 5
    .line 6
    iget-object v10, p0, LJ2/i;->a:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v10, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "%s already loaded previously!"

    .line 15
    .line 16
    new-array v1, v8, [Ljava/lang/Object;

    .line 17
    .line 18
    aput-object p2, v1, v7

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, LJ2/i;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_0
    move-object v0, v9

    .line 25
    check-cast v0, LJ2/j;

    .line 26
    .line 27
    invoke-virtual {v0, p2}, LJ2/j;->loadLibrary(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v10, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const-string v0, "%s (%s) was loaded normally!"

    .line 34
    .line 35
    new-array v1, v6, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object p2, v1, v7

    .line 38
    .line 39
    aput-object p3, v1, v8

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, LJ2/i;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-array v1, v8, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object v0, v1, v7

    .line 53
    .line 54
    const-string v0, "Loading the library normally failed: %s"

    .line 55
    .line 56
    invoke-virtual {p0, v0, v1}, LJ2/i;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "%s (%s) was not loaded normally, re-linking..."

    .line 60
    .line 61
    new-array v1, v6, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object p2, v1, v7

    .line 64
    .line 65
    aput-object p3, v1, v8

    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, LJ2/i;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p0 .. p3}, LJ2/i;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual/range {p0 .. p3}, LJ2/i;->cleanupOldLibFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    move-object v0, v9

    .line 85
    check-cast v0, LJ2/j;

    .line 86
    .line 87
    invoke-virtual {v0}, LJ2/j;->supportedAbis()[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, p2}, LJ2/j;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v0, p0, LJ2/i;->c:LJ2/c;

    .line 96
    .line 97
    check-cast v0, LJ2/b;

    .line 98
    .line 99
    move-object v5, p0

    .line 100
    move-object v1, p1

    .line 101
    invoke-virtual/range {v0 .. v5}, LJ2/b;->installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;LJ2/i;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v9, LJ2/j;

    .line 109
    .line 110
    invoke-virtual {v9, v0}, LJ2/j;->loadPath(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    const-string v0, "%s (%s) was re-linked!"

    .line 117
    .line 118
    new-array v1, v6, [Ljava/lang/Object;

    .line 119
    .line 120
    aput-object p2, v1, v7

    .line 121
    .line 122
    aput-object p3, v1, v8

    .line 123
    .line 124
    invoke-virtual {p0, v0, v1}, LJ2/i;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public cleanupOldLibFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, LJ2/i;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, LJ2/i;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p3, p0, LJ2/i;->b:LJ2/d;

    .line 10
    .line 11
    check-cast p3, LJ2/j;

    .line 12
    .line 13
    invoke-virtual {p3, p2}, LJ2/j;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance p3, LJ2/h;

    .line 18
    .line 19
    invoke-direct {p3, p2}, LJ2/h;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    array-length p3, p2

    .line 30
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-ge v0, p3, :cond_2

    .line 32
    .line 33
    aget-object v1, p2, v0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 50
    .line 51
    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    return-void
.end method

.method public getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    const-string v0, "lib"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, LJ2/i;->b:LJ2/d;

    .line 2
    .line 3
    check-cast v0, LJ2/j;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, LJ2/j;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p3}, LJ2/k;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance p3, Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, LJ2/i;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p3

    .line 25
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, LJ2/i;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "."

    .line 32
    .line 33
    invoke-static {p2, v1, p3}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LJ2/e;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-static {p2}, LJ2/k;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "Beginning load of %s..."

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p2, v1, v2

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, LJ2/i;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    if-nez p4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p3}, LJ2/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p4, Ljava/lang/Thread;

    .line 27
    .line 28
    new-instance v0, LJ2/g;

    .line 29
    .line 30
    invoke-direct {v0, p0, p1, p2, p3}, LJ2/g;-><init>(LJ2/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "Given library is either null or empty"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p2, "Given context is null"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LJ2/i;->log(Ljava/lang/String;)V

    return-void
.end method
