.class public final Ll1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/res/AssetManager;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ll1/f;

.field public final d:[B

.field public final e:Ljava/io/File;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:Z

.field public j:[Ll1/b;

.field public k:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Ll1/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ll1/a;->i:Z

    .line 6
    .line 7
    iput-object p1, p0, Ll1/a;->a:Landroid/content/res/AssetManager;

    .line 8
    .line 9
    iput-object p2, p0, Ll1/a;->b:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    iput-object p3, p0, Ll1/a;->c:Ll1/f;

    .line 12
    .line 13
    iput-object p4, p0, Ll1/a;->f:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p0, Ll1/a;->g:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p6, p0, Ll1/a;->h:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p7, p0, Ll1/a;->e:Ljava/io/File;

    .line 20
    .line 21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 p2, 0x18

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    if-lt p1, p2, :cond_1

    .line 27
    .line 28
    const/16 p2, 0x21

    .line 29
    .line 30
    if-le p1, p2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_0
    sget-object p3, Ll1/o;->a:[B

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_1
    sget-object p3, Ll1/o;->b:[B

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_2
    sget-object p3, Ll1/o;->c:[B

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_3
    sget-object p3, Ll1/o;->d:[B

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_4
    sget-object p3, Ll1/o;->e:[B

    .line 50
    .line 51
    :cond_1
    :goto_0
    iput-object p3, p0, Ll1/a;->d:[B

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string v0, "compressed"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Ll1/a;->c:Ll1/f;

    .line 27
    .line 28
    const/4 v0, 0x5

    .line 29
    invoke-interface {p1, v0, p2}, Ll1/f;->onDiagnosticReceived(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object p2
.end method

.method public final b(ILjava/io/Serializable;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/util/d;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/common/util/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Ll1/a;->b:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public deviceAllowsProfileInstallerAotWrites()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ll1/a;->d:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-virtual {p0, v2, v0}, Ll1/a;->b(ILjava/io/Serializable;)V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    iget-object v0, p0, Ll1/a;->e:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0, v0, v2}, Ll1/a;->b(ILjava/io/Serializable;)V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Ll1/a;->i:Z

    .line 33
    .line 34
    return v0
.end method

.method public read()Ll1/a;
    .locals 12

    .line 1
    iget-object v0, p0, Ll1/a;->a:Landroid/content/res/AssetManager;

    .line 2
    .line 3
    iget-object v1, p0, Ll1/a;->c:Ll1/f;

    .line 4
    .line 5
    iget-boolean v2, p0, Ll1/a;->i:Z

    .line 6
    .line 7
    if-eqz v2, :cond_9

    .line 8
    .line 9
    iget-object v2, p0, Ll1/a;->d:[B

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_11

    .line 14
    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x7

    .line 17
    :try_start_0
    iget-object v5, p0, Ll1/a;->g:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v5}, Ll1/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_3

    .line 24
    :catch_0
    move-exception v5

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v5

    .line 27
    goto :goto_1

    .line 28
    :goto_0
    invoke-interface {v1, v4, v5}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    const/4 v6, 0x6

    .line 33
    invoke-interface {v1, v6, v5}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_2
    move-object v5, v3

    .line 37
    :goto_3
    const-string v6, "Invalid magic"

    .line 38
    .line 39
    const/4 v7, 0x4

    .line 40
    const/16 v8, 0x8

    .line 41
    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    :try_start_1
    sget-object v9, Landroidx/profileinstaller/a;->a:[B

    .line 45
    .line 46
    invoke-static {v5, v7}, Ll1/o;->c(Ljava/io/InputStream;I)[B

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-eqz v9, :cond_1

    .line 55
    .line 56
    invoke-static {v5, v7}, Ll1/o;->c(Ljava/io/InputStream;I)[B

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    iget-object v10, p0, Ll1/a;->f:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v5, v9, v10}, Landroidx/profileinstaller/a;->g(Ljava/io/FileInputStream;[BLjava/lang/String;)[Ll1/b;

    .line 63
    .line 64
    .line 65
    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 67
    .line 68
    .line 69
    goto :goto_7

    .line 70
    :catch_2
    move-exception v5

    .line 71
    invoke-interface {v1, v4, v5}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_7

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_8

    .line 77
    :catch_3
    move-exception v9

    .line 78
    goto :goto_4

    .line 79
    :catch_4
    move-exception v9

    .line 80
    goto :goto_5

    .line 81
    :cond_1
    :try_start_3
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    invoke-direct {v9, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :goto_4
    :try_start_4
    invoke-interface {v1, v8, v9}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    .line 89
    .line 90
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 91
    .line 92
    .line 93
    goto :goto_6

    .line 94
    :catch_5
    move-exception v5

    .line 95
    invoke-interface {v1, v4, v5}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_6

    .line 99
    :goto_5
    :try_start_6
    invoke-interface {v1, v4, v9}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 100
    .line 101
    .line 102
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 103
    .line 104
    .line 105
    :goto_6
    move-object v9, v3

    .line 106
    :goto_7
    iput-object v9, p0, Ll1/a;->j:[Ll1/b;

    .line 107
    .line 108
    goto :goto_a

    .line 109
    :goto_8
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 110
    .line 111
    .line 112
    goto :goto_9

    .line 113
    :catch_6
    move-exception v2

    .line 114
    invoke-interface {v1, v4, v2}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :goto_9
    throw v0

    .line 118
    :cond_2
    :goto_a
    iget-object v5, p0, Ll1/a;->j:[Ll1/b;

    .line 119
    .line 120
    if-eqz v5, :cond_8

    .line 121
    .line 122
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    .line 124
    const/16 v10, 0x18

    .line 125
    .line 126
    if-lt v9, v10, :cond_8

    .line 127
    .line 128
    const/16 v11, 0x21

    .line 129
    .line 130
    if-le v9, v11, :cond_3

    .line 131
    .line 132
    goto :goto_11

    .line 133
    :cond_3
    if-eq v9, v10, :cond_4

    .line 134
    .line 135
    const/16 v10, 0x19

    .line 136
    .line 137
    if-eq v9, v10, :cond_4

    .line 138
    .line 139
    packed-switch v9, :pswitch_data_0

    .line 140
    .line 141
    .line 142
    goto :goto_11

    .line 143
    :cond_4
    :pswitch_0
    :try_start_9
    iget-object v9, p0, Ll1/a;->h:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p0, v0, v9}, Ll1/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 146
    .line 147
    .line 148
    move-result-object v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_7

    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    :try_start_a
    sget-object v9, Landroidx/profileinstaller/a;->b:[B

    .line 152
    .line 153
    invoke-static {v0, v7}, Ll1/o;->c(Ljava/io/InputStream;I)[B

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-eqz v9, :cond_5

    .line 162
    .line 163
    invoke-static {v0, v7}, Ll1/o;->c(Ljava/io/InputStream;I)[B

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-static {v0, v6, v2, v5}, Landroidx/profileinstaller/a;->d(Ljava/io/FileInputStream;[B[B[Ll1/b;)[Ll1/b;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iput-object v2, p0, Ll1/a;->j:[Ll1/b;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 172
    .line 173
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_7

    .line 174
    .line 175
    .line 176
    move-object v3, p0

    .line 177
    goto :goto_10

    .line 178
    :catch_7
    move-exception v0

    .line 179
    goto :goto_d

    .line 180
    :catch_8
    move-exception v0

    .line 181
    goto :goto_e

    .line 182
    :catch_9
    move-exception v0

    .line 183
    goto :goto_f

    .line 184
    :catchall_1
    move-exception v2

    .line 185
    goto :goto_b

    .line 186
    :cond_5
    :try_start_c
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 187
    .line 188
    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 192
    :goto_b
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 193
    .line 194
    .line 195
    goto :goto_c

    .line 196
    :catchall_2
    move-exception v0

    .line 197
    :try_start_e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    :goto_c
    throw v2

    .line 201
    :cond_6
    if-eqz v0, :cond_7

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_7

    .line 204
    .line 205
    .line 206
    goto :goto_10

    .line 207
    :goto_d
    iput-object v3, p0, Ll1/a;->j:[Ll1/b;

    .line 208
    .line 209
    invoke-interface {v1, v8, v0}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto :goto_10

    .line 213
    :goto_e
    invoke-interface {v1, v4, v0}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    goto :goto_10

    .line 217
    :goto_f
    const/16 v2, 0x9

    .line 218
    .line 219
    invoke-interface {v1, v2, v0}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :cond_7
    :goto_10
    if-eqz v3, :cond_8

    .line 223
    .line 224
    return-object v3

    .line 225
    :cond_8
    :goto_11
    return-object p0

    .line 226
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 227
    .line 228
    const-string v1, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 229
    .line 230
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public transcodeIfNeeded()Ll1/a;
    .locals 6

    .line 1
    iget-object v0, p0, Ll1/a;->c:Ll1/f;

    .line 2
    .line 3
    iget-object v1, p0, Ll1/a;->j:[Ll1/b;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Ll1/a;->d:[B

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_5

    .line 12
    :cond_0
    iget-boolean v3, p0, Ll1/a;->i:Z

    .line 13
    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    sget-object v5, Landroidx/profileinstaller/a;->a:[B

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v2, v1}, Landroidx/profileinstaller/a;->i(Ljava/io/ByteArrayOutputStream;[B[Ll1/b;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    invoke-interface {v0, v1, v3}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Ll1/a;->j:[Ll1/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    goto :goto_2

    .line 48
    :catch_1
    move-exception v1

    .line 49
    goto :goto_3

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Ll1/a;->k:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    .line 58
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_4

    .line 62
    :goto_0
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception v2

    .line 67
    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    .line 71
    :goto_2
    const/16 v2, 0x8

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :goto_3
    const/4 v2, 0x7

    .line 78
    invoke-interface {v0, v2, v1}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_4
    iput-object v3, p0, Ll1/a;->j:[Ll1/b;

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v1, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_3
    :goto_5
    return-object p0
.end method

.method public write()Z
    .locals 6

    .line 1
    iget-object v0, p0, Ll1/a;->k:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_8

    .line 7
    :cond_0
    iget-boolean v2, p0, Ll1/a;->i:Z

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    .line 16
    .line 17
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    iget-object v4, p0, Ll1/a;->e:Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 22
    .line 23
    .line 24
    const/16 v4, 0x200

    .line 25
    .line 26
    :try_start_2
    new-array v4, v4, [B

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-lez v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v4, 0x1

    .line 41
    invoke-virtual {p0, v4, v2}, Ll1/a;->b(ILjava/io/Serializable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 45
    .line 46
    .line 47
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Ll1/a;->k:[B

    .line 51
    .line 52
    iput-object v2, p0, Ll1/a;->j:[Ll1/b;

    .line 53
    .line 54
    return v4

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    goto :goto_9

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_5

    .line 59
    :catch_1
    move-exception v0

    .line 60
    goto :goto_7

    .line 61
    :catchall_2
    move-exception v0

    .line 62
    goto :goto_3

    .line 63
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_3
    move-exception v0

    .line 68
    :try_start_6
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 72
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :catchall_4
    move-exception v3

    .line 77
    :try_start_8
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_4
    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 81
    :goto_5
    const/4 v3, 0x7

    .line 82
    :try_start_9
    invoke-virtual {p0, v3, v0}, Ll1/a;->b(ILjava/io/Serializable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 83
    .line 84
    .line 85
    :goto_6
    iput-object v2, p0, Ll1/a;->k:[B

    .line 86
    .line 87
    iput-object v2, p0, Ll1/a;->j:[Ll1/b;

    .line 88
    .line 89
    goto :goto_8

    .line 90
    :goto_7
    const/4 v3, 0x6

    .line 91
    :try_start_a
    invoke-virtual {p0, v3, v0}, Ll1/a;->b(ILjava/io/Serializable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 92
    .line 93
    .line 94
    goto :goto_6

    .line 95
    :goto_8
    return v1

    .line 96
    :goto_9
    iput-object v2, p0, Ll1/a;->k:[B

    .line 97
    .line 98
    iput-object v2, p0, Ll1/a;->j:[Ll1/b;

    .line 99
    .line 100
    throw v0

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string v1, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0
.end method
