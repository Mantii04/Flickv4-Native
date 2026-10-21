.class public final Lq5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lq5/a;->b:Z

    .line 6
    .line 7
    iput-object p1, p0, Lq5/a;->a:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public setEnableLogging(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lq5/a;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)Ljava/io/File;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "ConfigManager"

    .line 4
    .line 5
    const-string v3, "log "

    .line 6
    .line 7
    new-instance v4, Ljava/io/File;

    .line 8
    .line 9
    iget-object v5, p0, Lq5/a;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    const-string v7, "hopmnproxy.cfg"

    .line 16
    .line 17
    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, "hopmnproxy config file cannot deleted"

    .line 34
    .line 35
    new-array v0, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v2, p1, v0}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-object v4

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_3

    .line 49
    .line 50
    const-string v6, "config:"

    .line 51
    .line 52
    const-string v8, "proxy "

    .line 53
    .line 54
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v6, ",$"

    .line 59
    .line 60
    const-string v8, ""

    .line 61
    .line 62
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v6, ","

    .line 67
    .line 68
    const-string v8, ":"

    .line 69
    .line 70
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v6, "Write new directive \'%s\' to hopmnproxy configuration file"

    .line 75
    .line 76
    new-array v8, v0, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object p1, v8, v1

    .line 79
    .line 80
    invoke-static {v2, v6, v8}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance v6, Ljava/io/FileOutputStream;

    .line 84
    .line 85
    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 86
    .line 87
    .line 88
    new-instance v8, Ljava/io/BufferedWriter;

    .line 89
    .line 90
    new-instance v9, Ljava/io/OutputStreamWriter;

    .line 91
    .line 92
    invoke-direct {v9, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 96
    .line 97
    .line 98
    iget-boolean v9, p0, Lq5/a;->b:Z

    .line 99
    .line 100
    if-eqz v9, :cond_2

    .line 101
    .line 102
    new-instance v9, Ljava/io/File;

    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    const-string v10, "log"

    .line 109
    .line 110
    invoke-direct {v9, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v5, "Enable logging to file %s"

    .line 114
    .line 115
    new-array v10, v0, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object v9, v10, v1

    .line 118
    .line 119
    invoke-static {v2, v5, v10}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, " D"

    .line 135
    .line 136
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v8, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->newLine()V

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-virtual {v8, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 162
    .line 163
    .line 164
    const-string p1, "hopmnproxy config file wrote %s"

    .line 165
    .line 166
    new-array v3, v0, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object v7, v3, v1

    .line 169
    .line 170
    invoke-static {v2, p1, v3}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const-string p1, "Config:\n%s\n========="

    .line 174
    .line 175
    invoke-static {v4}, Ls5/a;->toString(Ljava/io/File;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    new-array v0, v0, [Ljava/lang/Object;

    .line 180
    .line 181
    aput-object v3, v0, v1

    .line 182
    .line 183
    invoke-static {v2, p1, v0}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-object v4

    .line 187
    :cond_3
    const-string p1, "opmnproxy config file creation failed"

    .line 188
    .line 189
    new-array v0, v1, [Ljava/lang/Object;

    .line 190
    .line 191
    invoke-static {v2, p1, v0}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    .line 194
    return-object v4

    .line 195
    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 196
    .line 197
    const-string v1, "File write failed: "

    .line 198
    .line 199
    invoke-static {v2, v1, p1, v0}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    return-object v4
.end method
