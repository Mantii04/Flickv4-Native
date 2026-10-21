.class public final Landroidx/emoji2/text/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Object;

.field public static volatile k:Landroidx/emoji2/text/p;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final b:Lp/i;

.field public volatile c:I

.field public final d:Landroid/os/Handler;

.field public final e:Landroidx/emoji2/text/j;

.field public final f:Landroidx/emoji2/text/n;

.field public final g:I

.field public final h:I

.field public final i:Landroidx/emoji2/text/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/emoji2/text/p;->j:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/k;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    iput v1, p0, Landroidx/emoji2/text/p;->c:I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const v1, -0xff0100

    .line 18
    .line 19
    .line 20
    iput v1, p0, Landroidx/emoji2/text/p;->g:I

    .line 21
    .line 22
    iget-object v1, p1, Landroidx/emoji2/text/k;->a:Landroidx/emoji2/text/n;

    .line 23
    .line 24
    iput-object v1, p0, Landroidx/emoji2/text/p;->f:Landroidx/emoji2/text/n;

    .line 25
    .line 26
    iget v2, p1, Landroidx/emoji2/text/k;->b:I

    .line 27
    .line 28
    iput v2, p0, Landroidx/emoji2/text/p;->h:I

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/emoji2/text/k;->c:Landroidx/emoji2/text/h;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/emoji2/text/p;->i:Landroidx/emoji2/text/h;

    .line 33
    .line 34
    new-instance p1, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroidx/emoji2/text/p;->d:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance p1, Lp/i;

    .line 46
    .line 47
    invoke-direct {p1}, Lp/i;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Landroidx/emoji2/text/p;->b:Lp/i;

    .line 51
    .line 52
    new-instance p1, Landroidx/emoji2/text/j;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Landroidx/emoji2/text/j;-><init>(Landroidx/emoji2/text/p;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/emoji2/text/p;->e:Landroidx/emoji2/text/j;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    .line 65
    .line 66
    if-nez v2, :cond_0

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    :try_start_0
    iput v2, p0, Landroidx/emoji2/text/p;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    iget-object v0, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/emoji2/text/p;->getLoadState()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    .line 96
    :try_start_1
    new-instance v0, Landroidx/emoji2/text/i;

    .line 97
    .line 98
    invoke-direct {v0, p1}, Landroidx/emoji2/text/i;-><init>(Landroidx/emoji2/text/j;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, v0}, Landroidx/emoji2/text/n;->load(Landroidx/emoji2/text/o;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/p;->a(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    return-void
.end method

.method public static get()Landroidx/emoji2/text/p;
    .locals 4

    .line 1
    sget-object v0, Landroidx/emoji2/text/p;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/emoji2/text/p;->k:Landroidx/emoji2/text/p;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    .line 12
    .line 13
    invoke-static {v2, v3}, LL/h;->checkState(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1a

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_9

    .line 7
    .line 8
    :cond_0
    if-ltz p2, :cond_1a

    .line 9
    .line 10
    if-gez p3, :cond_1

    .line 11
    .line 12
    goto/16 :goto_9

    .line 13
    .line 14
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, -0x1

    .line 23
    if-eq v1, v3, :cond_1a

    .line 24
    .line 25
    if-eq v2, v3, :cond_1a

    .line 26
    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    goto/16 :goto_9

    .line 30
    .line 31
    :cond_2
    const/4 v4, 0x1

    .line 32
    if-eqz p4, :cond_17

    .line 33
    .line 34
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    if-ltz v1, :cond_4

    .line 43
    .line 44
    if-ge p4, v1, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    if-gez p2, :cond_5

    .line 48
    .line 49
    :cond_4
    :goto_0
    move v1, v3

    .line 50
    goto :goto_3

    .line 51
    :cond_5
    :goto_1
    move p4, v0

    .line 52
    :goto_2
    if-nez p2, :cond_6

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 56
    .line 57
    if-gez v1, :cond_8

    .line 58
    .line 59
    if-eqz p4, :cond_7

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_7
    move v1, v0

    .line 63
    goto :goto_3

    .line 64
    :cond_8
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz p4, :cond_a

    .line 69
    .line 70
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    if-nez p4, :cond_9

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_9
    add-int/lit8 p2, p2, -0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_b

    .line 85
    .line 86
    add-int/lit8 p2, p2, -0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_b
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    if-eqz p4, :cond_c

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_c
    move p4, v4

    .line 97
    goto :goto_2

    .line 98
    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-ltz v2, :cond_e

    .line 107
    .line 108
    if-ge p3, v2, :cond_d

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_d
    if-gez p2, :cond_f

    .line 112
    .line 113
    :cond_e
    :goto_4
    move p3, v3

    .line 114
    goto :goto_7

    .line 115
    :cond_f
    :goto_5
    move p4, v0

    .line 116
    :goto_6
    if-nez p2, :cond_10

    .line 117
    .line 118
    move p3, v2

    .line 119
    goto :goto_7

    .line 120
    :cond_10
    if-lt v2, p3, :cond_11

    .line 121
    .line 122
    if-eqz p4, :cond_16

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_11
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz p4, :cond_13

    .line 130
    .line 131
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 132
    .line 133
    .line 134
    move-result p4

    .line 135
    if-nez p4, :cond_12

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_12
    add-int/lit8 p2, p2, -0x1

    .line 139
    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-nez v6, :cond_14

    .line 148
    .line 149
    add-int/lit8 p2, p2, -0x1

    .line 150
    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 155
    .line 156
    .line 157
    move-result p4

    .line 158
    if-eqz p4, :cond_15

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    move p4, v4

    .line 164
    goto :goto_6

    .line 165
    :cond_16
    :goto_7
    if-eq v1, v3, :cond_1a

    .line 166
    .line 167
    if-ne p3, v3, :cond_18

    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_17
    sub-int/2addr v1, p2

    .line 171
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    add-int/2addr v2, p3

    .line 176
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    :cond_18
    const-class p2, Landroidx/emoji2/text/w;

    .line 185
    .line 186
    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    check-cast p2, [Landroidx/emoji2/text/w;

    .line 191
    .line 192
    if-eqz p2, :cond_1a

    .line 193
    .line 194
    array-length p4, p2

    .line 195
    if-lez p4, :cond_1a

    .line 196
    .line 197
    array-length p4, p2

    .line 198
    move v2, v0

    .line 199
    :goto_8
    if-ge v2, p4, :cond_19

    .line 200
    .line 201
    aget-object v3, p2, v2

    .line 202
    .line 203
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 216
    .line 217
    .line 218
    move-result p3

    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_19
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 227
    .line 228
    .line 229
    move-result p4

    .line 230
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 235
    .line 236
    .line 237
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 238
    .line 239
    .line 240
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 241
    .line 242
    .line 243
    return v4

    .line 244
    :cond_1a
    :goto_9
    return v0
.end method

.method public static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/16 v0, 0x43

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x70

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    move p1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0, p2, v1}, LC/k;->a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p0, p2, v2}, LC/k;->a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    :goto_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    return v2
.end method

.method public static init(Landroidx/emoji2/text/k;)Landroidx/emoji2/text/p;
    .locals 2

    .line 1
    sget-object v0, Landroidx/emoji2/text/p;->k:Landroidx/emoji2/text/p;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Landroidx/emoji2/text/p;->j:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Landroidx/emoji2/text/p;->k:Landroidx/emoji2/text/p;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/emoji2/text/p;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroidx/emoji2/text/p;-><init>(Landroidx/emoji2/text/k;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/emoji2/text/p;->k:Landroidx/emoji2/text/p;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    .line 23
    return-object v0

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    return-object v0
.end method

.method public static isConfigured()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/emoji2/text/p;->k:Landroidx/emoji2/text/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_0
    iput v1, p0, Landroidx/emoji2/text/p;->c:I

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/emoji2/text/p;->b:Lp/i;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/emoji2/text/p;->b:Lp/i;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/emoji2/text/p;->d:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v2, Landroidx/emoji2/text/m;

    .line 40
    .line 41
    iget v3, p0, Landroidx/emoji2/text/p;->c:I

    .line 42
    .line 43
    invoke-direct {v2, v0, v3, p1}, Landroidx/emoji2/text/m;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iget-object v0, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public getEmojiSpanIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/emoji2/text/p;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoadState()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/p;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iget-object v1, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public isEmojiSpanIndicatorEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/emoji2/text/p;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    const-string v3, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    .line 11
    .line 12
    invoke-static {v0, v3}, LL/h;->checkState(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/emoji2/text/p;->getLoadState()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/p;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :try_start_1
    iput v1, p0, Landroidx/emoji2/text/p;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Landroidx/emoji2/text/p;->e:Landroidx/emoji2/text/j;

    .line 57
    .line 58
    iget-object v1, v0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 59
    .line 60
    :try_start_2
    new-instance v2, Landroidx/emoji2/text/i;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Landroidx/emoji2/text/i;-><init>(Landroidx/emoji2/text/j;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v1, Landroidx/emoji2/text/p;->f:Landroidx/emoji2/text/n;

    .line 66
    .line 67
    invoke-interface {v0, v2}, Landroidx/emoji2/text/n;->load(Landroidx/emoji2/text/o;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/p;->a(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    iget-object v1, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 64
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/p;->process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7fffffff

    .line 65
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/emoji2/text/p;->process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 66
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/p;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;
    .locals 16

    move-object/from16 v1, p1

    move/from16 v0, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/emoji2/text/p;->getLoadState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2
    :goto_0
    const-string v7, "Not initialized yet"

    invoke-static {v4, v7}, LL/h;->checkState(ZLjava/lang/String;)V

    .line 3
    const-string v4, "start cannot be negative"

    invoke-static {v0, v4}, LL/h;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4
    const-string v4, "end cannot be negative"

    invoke-static {v2, v4}, LL/h;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 5
    const-string v4, "maxEmojiCount cannot be negative"

    invoke-static {v3, v4}, LL/h;->checkArgumentNonnegative(ILjava/lang/String;)I

    if-gt v0, v2, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_1
    const-string v7, "start should be <= than end"

    invoke-static {v4, v7}, LL/h;->checkArgument(ZLjava/lang/Object;)V

    const/4 v4, 0x0

    if-nez v1, :cond_2

    return-object v4

    .line 7
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v0, v7, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    const-string v8, "start should be < than charSequence length"

    invoke-static {v7, v8}, LL/h;->checkArgument(ZLjava/lang/Object;)V

    .line 8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v2, v7, :cond_4

    move v7, v6

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    const-string v8, "end should be < than charSequence length"

    invoke-static {v7, v8}, LL/h;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v7, :cond_5

    if-ne v0, v2, :cond_6

    :cond_5
    move-object/from16 v7, p0

    goto/16 :goto_f

    :cond_6
    move/from16 v7, p5

    if-eq v7, v6, :cond_7

    const/4 v8, 0x0

    :goto_4
    move-object/from16 v7, p0

    goto :goto_5

    :cond_7
    move v8, v6

    goto :goto_4

    .line 10
    :goto_5
    iget-object v9, v7, Landroidx/emoji2/text/p;->e:Landroidx/emoji2/text/j;

    .line 11
    iget-object v9, v9, Landroidx/emoji2/text/j;->b:LC/k;

    .line 12
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v10, v1, Landroidx/emoji2/text/E;

    if-eqz v10, :cond_8

    .line 14
    move-object v11, v1

    check-cast v11, Landroidx/emoji2/text/E;

    invoke-virtual {v11}, Landroidx/emoji2/text/E;->beginBatchEdit()V

    .line 15
    :cond_8
    const-class v11, Landroidx/emoji2/text/w;

    if-nez v10, :cond_a

    :try_start_0
    instance-of v12, v1, Landroid/text/Spannable;

    if-eqz v12, :cond_9

    goto :goto_6

    .line 16
    :cond_9
    instance-of v12, v1, Landroid/text/Spanned;

    if-eqz v12, :cond_b

    .line 17
    move-object v12, v1

    check-cast v12, Landroid/text/Spanned;

    add-int/lit8 v13, v0, -0x1

    add-int/lit8 v14, v2, 0x1

    invoke-interface {v12, v13, v14, v11}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v12

    if-gt v12, v2, :cond_b

    .line 18
    new-instance v4, Landroidx/emoji2/text/H;

    invoke-direct {v4, v1}, Landroidx/emoji2/text/H;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 19
    :cond_a
    :goto_6
    new-instance v4, Landroidx/emoji2/text/H;

    move-object v12, v1

    check-cast v12, Landroid/text/Spannable;

    invoke-direct {v4, v12}, Landroidx/emoji2/text/H;-><init>(Landroid/text/Spannable;)V

    :cond_b
    :goto_7
    if-eqz v4, :cond_d

    .line 20
    invoke-virtual {v4, v0, v2, v11}, Landroidx/emoji2/text/H;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroidx/emoji2/text/w;

    if-eqz v12, :cond_d

    .line 21
    array-length v13, v12

    if-lez v13, :cond_d

    .line 22
    array-length v13, v12

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v13, :cond_d

    .line 23
    aget-object v15, v12, v14

    .line 24
    invoke-virtual {v4, v15}, Landroidx/emoji2/text/H;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 25
    invoke-virtual {v4, v15}, Landroidx/emoji2/text/H;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eq v6, v2, :cond_c

    .line 26
    invoke-virtual {v4, v15}, Landroidx/emoji2/text/H;->removeSpan(Ljava/lang/Object;)V

    .line 27
    :cond_c
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 28
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_8

    :cond_d
    if-eq v0, v2, :cond_1f

    .line 29
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v0, v5, :cond_e

    goto/16 :goto_d

    :cond_e
    const v5, 0x7fffffff

    if-eq v3, v5, :cond_f

    if-eqz v4, :cond_f

    .line 30
    invoke-virtual {v4}, Landroidx/emoji2/text/H;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v11}, Landroidx/emoji2/text/H;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/emoji2/text/w;

    array-length v5, v5

    sub-int/2addr v3, v5

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    .line 31
    :goto_9
    new-instance v5, Landroidx/emoji2/text/v;

    iget-object v11, v9, LC/k;->a:Ljava/lang/Object;

    check-cast v11, Landroidx/emoji2/text/C;

    .line 32
    iget-object v11, v11, Landroidx/emoji2/text/C;->c:Landroidx/emoji2/text/B;

    .line 33
    invoke-direct {v5, v11}, Landroidx/emoji2/text/v;-><init>(Landroidx/emoji2/text/B;)V

    .line 34
    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v11

    move v12, v11

    move v11, v6

    move-object v6, v4

    :cond_10
    :goto_a
    move v4, v0

    :cond_11
    :goto_b
    const/4 v14, 0x2

    if-ge v0, v2, :cond_18

    if-ge v11, v3, :cond_18

    .line 35
    invoke-virtual {v5, v12}, Landroidx/emoji2/text/v;->a(I)I

    move-result v15

    const/4 v13, 0x1

    if-eq v15, v13, :cond_16

    if-eq v15, v14, :cond_15

    const/4 v13, 0x3

    if-eq v15, v13, :cond_12

    goto :goto_b

    :cond_12
    if-nez v8, :cond_13

    .line 36
    iget-object v13, v5, Landroidx/emoji2/text/v;->d:Landroidx/emoji2/text/B;

    .line 37
    iget-object v13, v13, Landroidx/emoji2/text/B;->b:Landroidx/emoji2/text/u;

    .line 38
    invoke-virtual {v9, v1, v4, v0, v13}, LC/k;->r(Ljava/lang/CharSequence;IILandroidx/emoji2/text/u;)Z

    move-result v13

    if-nez v13, :cond_10

    :cond_13
    if-nez v6, :cond_14

    .line 39
    new-instance v6, Landroidx/emoji2/text/H;

    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v6, v13}, Landroidx/emoji2/text/H;-><init>(Landroid/text/Spannable;)V

    .line 40
    :cond_14
    iget-object v13, v5, Landroidx/emoji2/text/v;->d:Landroidx/emoji2/text/B;

    .line 41
    iget-object v13, v13, Landroidx/emoji2/text/B;->b:Landroidx/emoji2/text/u;

    .line 42
    new-instance v14, Landroidx/emoji2/text/F;

    invoke-direct {v14, v13}, Landroidx/emoji2/text/F;-><init>(Landroidx/emoji2/text/u;)V

    const/16 v13, 0x21

    .line 43
    invoke-interface {v6, v14, v4, v0, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 44
    :cond_15
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v0, v13

    if-ge v0, v2, :cond_11

    .line 45
    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v12

    goto :goto_b

    .line 46
    :cond_16
    invoke-static {v1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v4, v0

    if-ge v4, v2, :cond_17

    .line 47
    invoke-static {v1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    move v12, v0

    :cond_17
    move v0, v4

    goto :goto_b

    .line 48
    :cond_18
    iget v2, v5, Landroidx/emoji2/text/v;->a:I

    if-ne v2, v14, :cond_1c

    iget-object v2, v5, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 49
    iget-object v2, v2, Landroidx/emoji2/text/B;->b:Landroidx/emoji2/text/u;

    if-eqz v2, :cond_1c

    .line 50
    iget v2, v5, Landroidx/emoji2/text/v;->f:I

    const/4 v13, 0x1

    if-gt v2, v13, :cond_19

    .line 51
    invoke-virtual {v5}, Landroidx/emoji2/text/v;->c()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_19
    if-ge v11, v3, :cond_1c

    if-nez v8, :cond_1a

    .line 52
    iget-object v2, v5, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 53
    iget-object v2, v2, Landroidx/emoji2/text/B;->b:Landroidx/emoji2/text/u;

    .line 54
    invoke-virtual {v9, v1, v4, v0, v2}, LC/k;->r(Ljava/lang/CharSequence;IILandroidx/emoji2/text/u;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    if-nez v6, :cond_1b

    .line 55
    new-instance v6, Landroidx/emoji2/text/H;

    invoke-direct {v6, v1}, Landroidx/emoji2/text/H;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    :cond_1b
    iget-object v2, v5, Landroidx/emoji2/text/v;->c:Landroidx/emoji2/text/B;

    .line 57
    iget-object v2, v2, Landroidx/emoji2/text/B;->b:Landroidx/emoji2/text/u;

    .line 58
    new-instance v3, Landroidx/emoji2/text/F;

    invoke-direct {v3, v2}, Landroidx/emoji2/text/F;-><init>(Landroidx/emoji2/text/u;)V

    const/16 v13, 0x21

    .line 59
    invoke-interface {v6, v3, v4, v0, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1c
    if-eqz v6, :cond_1e

    .line 60
    iget-object v0, v6, Landroidx/emoji2/text/H;->e:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_1d

    .line 61
    check-cast v1, Landroidx/emoji2/text/E;

    invoke-virtual {v1}, Landroidx/emoji2/text/E;->endBatchEdit()V

    :cond_1d
    return-object v0

    :cond_1e
    if-eqz v10, :cond_21

    :goto_c
    move-object v0, v1

    check-cast v0, Landroidx/emoji2/text/E;

    invoke-virtual {v0}, Landroidx/emoji2/text/E;->endBatchEdit()V

    return-object v1

    :cond_1f
    :goto_d
    if-eqz v10, :cond_21

    goto :goto_c

    :goto_e
    if-eqz v10, :cond_20

    check-cast v1, Landroidx/emoji2/text/E;

    invoke-virtual {v1}, Landroidx/emoji2/text/E;->endBatchEdit()V

    .line 62
    :cond_20
    throw v0

    :cond_21
    :goto_f
    return-object v1
.end method

.method public registerInitCallback(Landroidx/emoji2/text/l;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "initCallback cannot be null"

    .line 3
    .line 4
    invoke-static {p1, v1}, LL/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget v2, p0, Landroidx/emoji2/text/p;->c:I

    .line 17
    .line 18
    if-eq v2, v0, :cond_1

    .line 19
    .line 20
    iget v2, p0, Landroidx/emoji2/text/p;->c:I

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/p;->b:Lp/i;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/emoji2/text/p;->d:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v3, Landroidx/emoji2/text/m;

    .line 37
    .line 38
    iget v4, p0, Landroidx/emoji2/text/p;->c:I

    .line 39
    .line 40
    invoke-static {p1, v1}, LL/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroidx/emoji2/text/l;

    .line 45
    .line 46
    new-array v0, v0, [Landroidx/emoji2/text/l;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    aput-object p1, v0, v1

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/util/List;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-direct {v3, p1, v4, v0}, Landroidx/emoji2/text/m;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object p1, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_2
    iget-object v0, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method public unregisterInitCallback(Landroidx/emoji2/text/l;)V
    .locals 2

    .line 1
    const-string v0, "initCallback cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, LL/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v1, p0, Landroidx/emoji2/text/p;->b:Lp/i;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/emoji2/text/p;->getLoadState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/p;->e:Landroidx/emoji2/text/j;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 28
    .line 29
    iget-object v2, v0, Landroidx/emoji2/text/j;->c:Landroidx/emoji2/text/C;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/emoji2/text/C;->a:Ld0/b;

    .line 32
    .line 33
    invoke-virtual {v2}, Ld0/b;->version()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string v3, "android.support.text.emoji.emojiCompat_metadataVersion"

    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    const-string v1, "android.support.text.emoji.emojiCompat_replaceAll"

    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method
