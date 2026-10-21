.class public final Lorg/jsoup/parser/a;
.super Lorg/jsoup/parser/c;
.source "SourceFile"


# static fields
.field public static final A:[Ljava/lang/String;

.field public static final B:[Ljava/lang/String;

.field public static final v:[Ljava/lang/String;

.field public static final w:[Ljava/lang/String;

.field public static final x:[Ljava/lang/String;

.field public static final y:[Ljava/lang/String;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public k:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public l:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public m:Z

.field public n:Lorg/jsoup/nodes/b;

.field public o:Lj6/l;

.field public p:Ljava/util/ArrayList;

.field public q:Ljava/util/ArrayList;

.field public r:Lk6/l;

.field public s:Z

.field public t:Z

.field public final u:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 80

    .line 1
    const-string v6, "td"

    .line 2
    .line 3
    const-string v7, "th"

    .line 4
    .line 5
    const-string v0, "applet"

    .line 6
    .line 7
    const-string v1, "caption"

    .line 8
    .line 9
    const-string v2, "html"

    .line 10
    .line 11
    const-string v3, "marquee"

    .line 12
    .line 13
    const-string v4, "object"

    .line 14
    .line 15
    const-string v5, "table"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/jsoup/parser/a;->v:[Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "ol"

    .line 24
    .line 25
    const-string v1, "ul"

    .line 26
    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/jsoup/parser/a;->w:[Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "button"

    .line 34
    .line 35
    filled-new-array {v0}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/jsoup/parser/a;->x:[Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "html"

    .line 42
    .line 43
    const-string v1, "table"

    .line 44
    .line 45
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lorg/jsoup/parser/a;->y:[Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, "optgroup"

    .line 52
    .line 53
    const-string v1, "option"

    .line 54
    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/jsoup/parser/a;->z:[Ljava/lang/String;

    .line 60
    .line 61
    const-string v7, "rp"

    .line 62
    .line 63
    const-string v8, "rt"

    .line 64
    .line 65
    const-string v1, "dd"

    .line 66
    .line 67
    const-string v2, "dt"

    .line 68
    .line 69
    const-string v3, "li"

    .line 70
    .line 71
    const-string v4, "optgroup"

    .line 72
    .line 73
    const-string v5, "option"

    .line 74
    .line 75
    const-string v6, "p"

    .line 76
    .line 77
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lorg/jsoup/parser/a;->A:[Ljava/lang/String;

    .line 82
    .line 83
    const-string v78, "wbr"

    .line 84
    .line 85
    const-string v79, "xmp"

    .line 86
    .line 87
    const-string v1, "address"

    .line 88
    .line 89
    const-string v2, "applet"

    .line 90
    .line 91
    const-string v3, "area"

    .line 92
    .line 93
    const-string v4, "article"

    .line 94
    .line 95
    const-string v5, "aside"

    .line 96
    .line 97
    const-string v6, "base"

    .line 98
    .line 99
    const-string v7, "basefont"

    .line 100
    .line 101
    const-string v8, "bgsound"

    .line 102
    .line 103
    const-string v9, "blockquote"

    .line 104
    .line 105
    const-string v10, "body"

    .line 106
    .line 107
    const-string v11, "br"

    .line 108
    .line 109
    const-string v12, "button"

    .line 110
    .line 111
    const-string v13, "caption"

    .line 112
    .line 113
    const-string v14, "center"

    .line 114
    .line 115
    const-string v15, "col"

    .line 116
    .line 117
    const-string v16, "colgroup"

    .line 118
    .line 119
    const-string v17, "command"

    .line 120
    .line 121
    const-string v18, "dd"

    .line 122
    .line 123
    const-string v19, "details"

    .line 124
    .line 125
    const-string v20, "dir"

    .line 126
    .line 127
    const-string v21, "div"

    .line 128
    .line 129
    const-string v22, "dl"

    .line 130
    .line 131
    const-string v23, "dt"

    .line 132
    .line 133
    const-string v24, "embed"

    .line 134
    .line 135
    const-string v25, "fieldset"

    .line 136
    .line 137
    const-string v26, "figcaption"

    .line 138
    .line 139
    const-string v27, "figure"

    .line 140
    .line 141
    const-string v28, "footer"

    .line 142
    .line 143
    const-string v29, "form"

    .line 144
    .line 145
    const-string v30, "frame"

    .line 146
    .line 147
    const-string v31, "frameset"

    .line 148
    .line 149
    const-string v32, "h1"

    .line 150
    .line 151
    const-string v33, "h2"

    .line 152
    .line 153
    const-string v34, "h3"

    .line 154
    .line 155
    const-string v35, "h4"

    .line 156
    .line 157
    const-string v36, "h5"

    .line 158
    .line 159
    const-string v37, "h6"

    .line 160
    .line 161
    const-string v38, "head"

    .line 162
    .line 163
    const-string v39, "header"

    .line 164
    .line 165
    const-string v40, "hgroup"

    .line 166
    .line 167
    const-string v41, "hr"

    .line 168
    .line 169
    const-string v42, "html"

    .line 170
    .line 171
    const-string v43, "iframe"

    .line 172
    .line 173
    const-string v44, "img"

    .line 174
    .line 175
    const-string v45, "input"

    .line 176
    .line 177
    const-string v46, "isindex"

    .line 178
    .line 179
    const-string v47, "li"

    .line 180
    .line 181
    const-string v48, "link"

    .line 182
    .line 183
    const-string v49, "listing"

    .line 184
    .line 185
    const-string v50, "marquee"

    .line 186
    .line 187
    const-string v51, "menu"

    .line 188
    .line 189
    const-string v52, "meta"

    .line 190
    .line 191
    const-string v53, "nav"

    .line 192
    .line 193
    const-string v54, "noembed"

    .line 194
    .line 195
    const-string v55, "noframes"

    .line 196
    .line 197
    const-string v56, "noscript"

    .line 198
    .line 199
    const-string v57, "object"

    .line 200
    .line 201
    const-string v58, "ol"

    .line 202
    .line 203
    const-string v59, "p"

    .line 204
    .line 205
    const-string v60, "param"

    .line 206
    .line 207
    const-string v61, "plaintext"

    .line 208
    .line 209
    const-string v62, "pre"

    .line 210
    .line 211
    const-string v63, "script"

    .line 212
    .line 213
    const-string v64, "section"

    .line 214
    .line 215
    const-string v65, "select"

    .line 216
    .line 217
    const-string v66, "style"

    .line 218
    .line 219
    const-string v67, "summary"

    .line 220
    .line 221
    const-string v68, "table"

    .line 222
    .line 223
    const-string v69, "tbody"

    .line 224
    .line 225
    const-string v70, "td"

    .line 226
    .line 227
    const-string v71, "textarea"

    .line 228
    .line 229
    const-string v72, "tfoot"

    .line 230
    .line 231
    const-string v73, "th"

    .line 232
    .line 233
    const-string v74, "thead"

    .line 234
    .line 235
    const-string v75, "title"

    .line 236
    .line 237
    const-string v76, "tr"

    .line 238
    .line 239
    const-string v77, "ul"

    .line 240
    .line 241
    filled-new-array/range {v1 .. v79}, [Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sput-object v0, Lorg/jsoup/parser/a;->B:[Ljava/lang/String;

    .line 246
    .line 247
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/jsoup/parser/a;->u:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static u(Ljava/util/ArrayList;Lorg/jsoup/nodes/b;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lorg/jsoup/nodes/b;

    .line 14
    .line 15
    if-ne v2, p1, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method


# virtual methods
.method public final A(Lorg/jsoup/nodes/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jsoup/nodes/b;

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final B(Lorg/jsoup/nodes/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jsoup/nodes/b;

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final C()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_f

    .line 11
    .line 12
    iget-object v3, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lorg/jsoup/nodes/b;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    move v2, v1

    .line 24
    :cond_0
    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "select"

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->y:Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    .line 37
    .line 38
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string v4, "td"

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_e

    .line 48
    .line 49
    const-string v4, "th"

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_2
    const-string v4, "tr"

    .line 62
    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->w:Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    .line 70
    .line 71
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    const-string v4, "tbody"

    .line 75
    .line 76
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_d

    .line 81
    .line 82
    const-string v4, "thead"

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_d

    .line 89
    .line 90
    const-string v4, "tfoot"

    .line 91
    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const-string v4, "caption"

    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->t:Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    .line 108
    .line 109
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    const-string v4, "colgroup"

    .line 113
    .line 114
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_6

    .line 119
    .line 120
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->u:Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    .line 121
    .line 122
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 123
    .line 124
    return-void

    .line 125
    :cond_6
    const-string v4, "table"

    .line 126
    .line 127
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_7

    .line 132
    .line 133
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->r:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    .line 134
    .line 135
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 136
    .line 137
    return-void

    .line 138
    :cond_7
    const-string v4, "head"

    .line 139
    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_8

    .line 145
    .line 146
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 147
    .line 148
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 149
    .line 150
    return-void

    .line 151
    :cond_8
    const-string v4, "body"

    .line 152
    .line 153
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_9

    .line 158
    .line 159
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 160
    .line 161
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 162
    .line 163
    return-void

    .line 164
    :cond_9
    const-string v4, "frameset"

    .line 165
    .line 166
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_a

    .line 171
    .line 172
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->B:Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    .line 173
    .line 174
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 175
    .line 176
    return-void

    .line 177
    :cond_a
    const-string v4, "html"

    .line 178
    .line 179
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_b

    .line 184
    .line 185
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->f:Lorg/jsoup/parser/HtmlTreeBuilderState$3;

    .line 186
    .line 187
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 188
    .line 189
    return-void

    .line 190
    :cond_b
    if-eqz v2, :cond_c

    .line 191
    .line 192
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 193
    .line 194
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 195
    .line 196
    return-void

    .line 197
    :cond_c
    add-int/lit8 v0, v0, -0x1

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_d
    :goto_1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->v:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 202
    .line 203
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 204
    .line 205
    return-void

    .line 206
    :cond_e
    :goto_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->x:Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    .line 207
    .line 208
    iput-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 209
    .line 210
    :cond_f
    return-void
.end method

.method public final a()Lk6/d;
    .locals 1

    .line 1
    sget-object v0, Lk6/d;->c:Lk6/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jsoup/nodes/b;

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lorg/jsoup/nodes/b;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public final c()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lorg/jsoup/nodes/b;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_0

    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public final varargs d([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jsoup/nodes/b;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2, p1}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "html"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    return-void
.end method

.method public final e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/ParseErrorList;

    .line 10
    .line 11
    new-instance v1, Lk6/c;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/jsoup/parser/c;->a:Lk6/a;

    .line 14
    .line 15
    invoke-virtual {v2}, Lk6/a;->pos()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x2

    .line 30
    new-array v4, v4, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    aput-object v3, v4, v5

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    aput-object p1, v4, v3

    .line 37
    .line 38
    const-string p1, "Unexpected token [%s] when in state [%s]"

    .line 39
    .line 40
    invoke-direct {v1, v2, p1, v4}, Lk6/c;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    :goto_0
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lorg/jsoup/parser/a;->A:[Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/jsoup/parser/a;->v()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jsoup/nodes/b;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public final h(Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jsoup/nodes/b;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lorg/jsoup/parser/a;->x:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/parser/a;->v:[Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/jsoup/parser/a;->u:[Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aput-object p1, v2, v3

    .line 9
    .line 10
    invoke-virtual {p0, v2, v1, v0}, Lorg/jsoup/parser/a;->l([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lk6/d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jsoup/parser/c;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lk6/d;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->b:Lorg/jsoup/parser/HtmlTreeBuilderState$1;

    .line 5
    .line 6
    iput-object p1, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/jsoup/parser/a;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lorg/jsoup/parser/a;->m:Z

    .line 13
    .line 14
    iput-object p1, p0, Lorg/jsoup/parser/a;->n:Lorg/jsoup/nodes/b;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/jsoup/parser/a;->o:Lj6/l;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance p1, Lk6/l;

    .line 33
    .line 34
    invoke-direct {p1}, Lk6/l;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lorg/jsoup/parser/a;->r:Lk6/l;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lorg/jsoup/parser/a;->s:Z

    .line 41
    .line 42
    iput-boolean p2, p0, Lorg/jsoup/parser/a;->t:Z

    .line 43
    .line 44
    return-void
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/jsoup/parser/a;->v:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/a;->u:[Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput-object p1, v1, v2

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0, p1}, Lorg/jsoup/parser/a;->l([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    const/4 v2, 0x0

    .line 10
    if-ltz v0, :cond_2

    .line 11
    .line 12
    iget-object v3, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lorg/jsoup/nodes/b;

    .line 19
    .line 20
    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    sget-object v4, Lorg/jsoup/parser/a;->z:[Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3, v4}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string p1, "Should not be reachable"

    .line 44
    .line 45
    invoke-static {p1}, Lh6/k;->fail(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v2
.end method

.method public final l([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    const/16 v2, 0x64

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x65

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v3

    .line 18
    :goto_0
    if-lt v1, v0, :cond_4

    .line 19
    .line 20
    iget-object v2, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lorg/jsoup/nodes/b;

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, p1}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_1
    invoke-static {v2, p2}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    if-eqz p3, :cond_3

    .line 48
    .line 49
    invoke-static {v2, p3}, Lh6/j;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    :goto_1
    return v3
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/jsoup/parser/a;->y:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/a;->u:[Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput-object p1, v1, v2

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0, p1}, Lorg/jsoup/parser/a;->l([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final n(Lk6/m;)Lorg/jsoup/nodes/b;
    .locals 4

    .line 1
    iget-boolean v0, p1, Lk6/n;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/a;->q(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/jsoup/parser/c;->b:Lorg/jsoup/parser/b;

    .line 15
    .line 16
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->b:Lorg/jsoup/parser/TokeniserState$1;

    .line 17
    .line 18
    iput-object v1, v0, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/jsoup/parser/a;->r:Lk6/l;

    .line 21
    .line 22
    invoke-virtual {v1}, Lk6/n;->p()Lk6/n;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->tagName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lk6/n;->n(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/b;->h(Lk6/o;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    new-instance v0, Lorg/jsoup/nodes/b;

    .line 37
    .line 38
    invoke-virtual {p1}, Lk6/n;->m()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 43
    .line 44
    invoke-static {v1, v2}, Lk6/f;->valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 51
    .line 52
    iget-object p1, p1, Lk6/n;->j:Lj6/c;

    .line 53
    .line 54
    iget-boolean v3, v3, Lk6/d;->b:Z

    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Lj6/c;->normalize()V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-direct {v0, v1, v2, p1}, Lorg/jsoup/nodes/b;-><init>(Lk6/f;Ljava/lang/String;Lj6/c;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->t(Lj6/p;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public final o(Lk6/h;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->tagName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Lk6/h;->b:Ljava/lang/String;

    .line 10
    .line 11
    instance-of p1, p1, Lk6/g;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lj6/e;

    .line 16
    .line 17
    invoke-direct {p1, v1}, Lj6/e;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string p1, "script"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    const-string p1, "style"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Lj6/r;

    .line 39
    .line 40
    invoke-direct {p1, v1}, Lj6/r;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    new-instance p1, Lj6/g;

    .line 45
    .line 46
    invoke-direct {p1, v1}, Lj6/g;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final p(Lk6/i;)V
    .locals 1

    .line 1
    new-instance v0, Lj6/f;

    .line 2
    .line 3
    iget-object p1, p1, Lk6/i;->b:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lj6/f;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->t(Lj6/p;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public process(Lk6/o;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic processStartTag(Ljava/lang/String;Lj6/c;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;Lj6/c;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final q(Lk6/m;)Lorg/jsoup/nodes/b;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lk6/n;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lk6/f;->valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lorg/jsoup/nodes/b;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lk6/n;->j:Lj6/c;

    .line 16
    .line 17
    invoke-direct {v1, v0, v2, v3}, Lorg/jsoup/nodes/b;-><init>(Lk6/f;Ljava/lang/String;Lj6/c;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/a;->t(Lj6/p;)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p1, Lk6/n;->i:Z

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lk6/f;->isKnownTag()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lk6/f;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lorg/jsoup/parser/c;->b:Lorg/jsoup/parser/b;

    .line 40
    .line 41
    iget-object v0, p1, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    new-instance v2, Lk6/c;

    .line 50
    .line 51
    iget-object p1, p1, Lorg/jsoup/parser/b;->a:Lk6/a;

    .line 52
    .line 53
    invoke-virtual {p1}, Lk6/a;->pos()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iput p1, v2, Lk6/c;->a:I

    .line 61
    .line 62
    const-string p1, "Tag cannot be self closing; not a void tag"

    .line 63
    .line 64
    iput-object p1, v2, Lk6/c;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_0
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, v0, Lk6/f;->f:Z

    .line 72
    .line 73
    :cond_1
    return-object v1
.end method

.method public final r(Lk6/m;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lk6/n;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lk6/f;->valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lj6/l;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lk6/n;->j:Lj6/c;

    .line 16
    .line 17
    invoke-direct {v1, v0, v2, p1}, Lj6/l;-><init>(Lk6/f;Ljava/lang/String;Lj6/c;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lorg/jsoup/parser/a;->o:Lj6/l;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/a;->t(Lj6/p;)V

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final s(Lj6/p;)V
    .locals 4

    .line 1
    const-string v0, "table"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->h(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->parent()Lorg/jsoup/nodes/b;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->parent()Lorg/jsoup/nodes/b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    move v3, v2

    .line 22
    move-object v2, v1

    .line 23
    move v1, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/a;->b(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lorg/jsoup/nodes/b;

    .line 37
    .line 38
    :goto_0
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-static {v0}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->before(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final t(Lj6/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/parser/c;->c:Lj6/h;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/parser/a;->t:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/a;->s(Lj6/p;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 28
    .line 29
    .line 30
    :goto_0
    instance-of v0, p1, Lorg/jsoup/nodes/b;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    check-cast p1, Lorg/jsoup/nodes/b;

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->tag()Lk6/f;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lk6/f;->isFormListed()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lorg/jsoup/parser/a;->o:Lj6/l;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lj6/l;->addElement(Lorg/jsoup/nodes/b;)Lj6/l;

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TreeBuilder{currentToken="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", state="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", currentElement="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x7d

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/jsoup/nodes/b;

    .line 16
    .line 17
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jsoup/nodes/b;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    return-void
.end method

.method public final x(Lk6/o;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 2
    .line 3
    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final y(Lorg/jsoup/nodes/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_3

    .line 11
    .line 12
    iget-object v2, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/jsoup/nodes/b;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->attributes()Lj6/c;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->attributes()Lj6/c;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v3, v2}, Lj6/c;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    :cond_1
    const/4 v2, 0x3

    .line 54
    if-ne v1, v2, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final z()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/jsoup/nodes/b;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_6

    .line 21
    .line 22
    iget-object v2, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-static {v2, v0}, Lorg/jsoup/parser/a;->u(Ljava/util/ArrayList;Lorg/jsoup/nodes/b;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    sub-int/2addr v2, v1

    .line 38
    move v3, v2

    .line 39
    :cond_2
    const/4 v4, 0x0

    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    iget-object v0, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 44
    .line 45
    add-int/lit8 v3, v3, -0x1

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lorg/jsoup/nodes/b;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-object v5, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-static {v5, v0}, Lorg/jsoup/parser/a;->u(Ljava/util/ArrayList;Lorg/jsoup/nodes/b;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    :cond_4
    move v1, v4

    .line 64
    :goto_1
    if-nez v1, :cond_5

    .line 65
    .line 66
    iget-object v0, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lorg/jsoup/nodes/b;

    .line 75
    .line 76
    :cond_5
    invoke-static {v0}, Lh6/k;->notNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v5, Lorg/jsoup/nodes/b;

    .line 84
    .line 85
    iget-object v6, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 86
    .line 87
    invoke-static {v1, v6}, Lk6/f;->valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v6, p0, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 92
    .line 93
    invoke-direct {v5, v1, v6}, Lorg/jsoup/nodes/b;-><init>(Lk6/f;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v5}, Lorg/jsoup/parser/a;->t(Lj6/p;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->attributes()Lj6/c;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->attributes()Lj6/c;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v1, v6}, Lj6/c;->addAll(Lj6/c;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    if-ne v3, v2, :cond_4

    .line 121
    .line 122
    :cond_6
    :goto_2
    return-void
.end method
