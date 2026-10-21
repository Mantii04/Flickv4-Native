.class public final enum Lcom/fasterxml/jackson/core/JsonToken;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;


# instance fields
.field final _id:I

.field final _isBoolean:Z

.field final _isNumber:Z

.field final _isScalar:Z

.field final _isStructEnd:Z

.field final _isStructStart:Z

.field final _serialized:Ljava/lang/String;

.field final _serializedBytes:[B

.field final _serializedChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "NOT_AVAILABLE"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 12
    .line 13
    new-instance v1, Lcom/fasterxml/jackson/core/JsonToken;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v5, "{"

    .line 17
    .line 18
    const-string v6, "START_OBJECT"

    .line 19
    .line 20
    invoke-direct {v1, v6, v2, v5, v2}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 24
    .line 25
    new-instance v5, Lcom/fasterxml/jackson/core/JsonToken;

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    const-string v7, "}"

    .line 29
    .line 30
    const-string v8, "END_OBJECT"

    .line 31
    .line 32
    invoke-direct {v5, v8, v6, v7, v6}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sput-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 36
    .line 37
    new-instance v7, Lcom/fasterxml/jackson/core/JsonToken;

    .line 38
    .line 39
    const/4 v8, 0x3

    .line 40
    const-string v9, "["

    .line 41
    .line 42
    const-string v10, "START_ARRAY"

    .line 43
    .line 44
    invoke-direct {v7, v10, v8, v9, v8}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v7, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 48
    .line 49
    new-instance v9, Lcom/fasterxml/jackson/core/JsonToken;

    .line 50
    .line 51
    const/4 v10, 0x4

    .line 52
    const-string v11, "]"

    .line 53
    .line 54
    const-string v12, "END_ARRAY"

    .line 55
    .line 56
    invoke-direct {v9, v12, v10, v11, v10}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 60
    .line 61
    new-instance v11, Lcom/fasterxml/jackson/core/JsonToken;

    .line 62
    .line 63
    const-string v12, "FIELD_NAME"

    .line 64
    .line 65
    const/4 v13, 0x5

    .line 66
    invoke-direct {v11, v12, v13, v4, v13}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 70
    .line 71
    new-instance v12, Lcom/fasterxml/jackson/core/JsonToken;

    .line 72
    .line 73
    const-string v14, "VALUE_EMBEDDED_OBJECT"

    .line 74
    .line 75
    const/4 v15, 0x6

    .line 76
    move/from16 v16, v2

    .line 77
    .line 78
    const/16 v2, 0xc

    .line 79
    .line 80
    invoke-direct {v12, v14, v15, v4, v2}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    sput-object v12, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 84
    .line 85
    new-instance v14, Lcom/fasterxml/jackson/core/JsonToken;

    .line 86
    .line 87
    move/from16 v17, v3

    .line 88
    .line 89
    const-string v3, "VALUE_STRING"

    .line 90
    .line 91
    move/from16 v18, v6

    .line 92
    .line 93
    const/4 v6, 0x7

    .line 94
    invoke-direct {v14, v3, v6, v4, v15}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    sput-object v14, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 98
    .line 99
    new-instance v3, Lcom/fasterxml/jackson/core/JsonToken;

    .line 100
    .line 101
    move/from16 v19, v8

    .line 102
    .line 103
    const-string v8, "VALUE_NUMBER_INT"

    .line 104
    .line 105
    move/from16 v20, v10

    .line 106
    .line 107
    const/16 v10, 0x8

    .line 108
    .line 109
    invoke-direct {v3, v8, v10, v4, v6}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 113
    .line 114
    new-instance v8, Lcom/fasterxml/jackson/core/JsonToken;

    .line 115
    .line 116
    move/from16 v21, v6

    .line 117
    .line 118
    const-string v6, "VALUE_NUMBER_FLOAT"

    .line 119
    .line 120
    move/from16 v22, v13

    .line 121
    .line 122
    const/16 v13, 0x9

    .line 123
    .line 124
    invoke-direct {v8, v6, v13, v4, v10}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    sput-object v8, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 128
    .line 129
    new-instance v4, Lcom/fasterxml/jackson/core/JsonToken;

    .line 130
    .line 131
    const-string v6, "true"

    .line 132
    .line 133
    move/from16 v23, v10

    .line 134
    .line 135
    const-string v10, "VALUE_TRUE"

    .line 136
    .line 137
    move/from16 v24, v15

    .line 138
    .line 139
    const/16 v15, 0xa

    .line 140
    .line 141
    invoke-direct {v4, v10, v15, v6, v13}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    sput-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 145
    .line 146
    new-instance v6, Lcom/fasterxml/jackson/core/JsonToken;

    .line 147
    .line 148
    const-string v10, "false"

    .line 149
    .line 150
    move/from16 v25, v13

    .line 151
    .line 152
    const-string v13, "VALUE_FALSE"

    .line 153
    .line 154
    const/16 v2, 0xb

    .line 155
    .line 156
    invoke-direct {v6, v13, v2, v10, v15}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    sput-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 160
    .line 161
    new-instance v10, Lcom/fasterxml/jackson/core/JsonToken;

    .line 162
    .line 163
    const-string v13, "VALUE_NULL"

    .line 164
    .line 165
    move/from16 v27, v15

    .line 166
    .line 167
    const-string v15, "null"

    .line 168
    .line 169
    move-object/from16 v28, v0

    .line 170
    .line 171
    const/16 v0, 0xc

    .line 172
    .line 173
    invoke-direct {v10, v13, v0, v15, v2}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    sput-object v10, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 177
    .line 178
    const/16 v0, 0xd

    .line 179
    .line 180
    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonToken;

    .line 181
    .line 182
    aput-object v28, v0, v17

    .line 183
    .line 184
    aput-object v1, v0, v16

    .line 185
    .line 186
    aput-object v5, v0, v18

    .line 187
    .line 188
    aput-object v7, v0, v19

    .line 189
    .line 190
    aput-object v9, v0, v20

    .line 191
    .line 192
    aput-object v11, v0, v22

    .line 193
    .line 194
    aput-object v12, v0, v24

    .line 195
    .line 196
    aput-object v14, v0, v21

    .line 197
    .line 198
    aput-object v3, v0, v23

    .line 199
    .line 200
    aput-object v8, v0, v25

    .line 201
    .line 202
    aput-object v4, v0, v27

    .line 203
    .line 204
    aput-object v6, v0, v2

    .line 205
    .line 206
    const/16 v26, 0xc

    .line 207
    .line 208
    aput-object v10, v0, v26

    .line 209
    .line 210
    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    .line 211
    .line 212
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 22
    .line 23
    array-length p2, p2

    .line 24
    new-array p3, p2, [B

    .line 25
    .line 26
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    .line 27
    .line 28
    move p3, p1

    .line 29
    :goto_0
    if-ge p3, p2, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    .line 32
    .line 33
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 34
    .line 35
    aget-char v1, v1, p3

    .line 36
    .line 37
    int-to-byte v1, v1

    .line 38
    aput-byte v1, v0, p3

    .line 39
    .line 40
    add-int/lit8 p3, p3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    iput p4, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    .line 44
    .line 45
    const/16 p2, 0xa

    .line 46
    .line 47
    const/4 p3, 0x1

    .line 48
    if-eq p4, p2, :cond_3

    .line 49
    .line 50
    const/16 p2, 0x9

    .line 51
    .line 52
    if-ne p4, p2, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move p2, p1

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    :goto_2
    move p2, p3

    .line 58
    :goto_3
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isBoolean:Z

    .line 59
    .line 60
    const/4 p2, 0x7

    .line 61
    if-eq p4, p2, :cond_5

    .line 62
    .line 63
    const/16 p2, 0x8

    .line 64
    .line 65
    if-ne p4, p2, :cond_4

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    move p2, p1

    .line 69
    goto :goto_5

    .line 70
    :cond_5
    :goto_4
    move p2, p3

    .line 71
    :goto_5
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isNumber:Z

    .line 72
    .line 73
    if-eq p4, p3, :cond_7

    .line 74
    .line 75
    const/4 p2, 0x3

    .line 76
    if-ne p4, p2, :cond_6

    .line 77
    .line 78
    goto :goto_6

    .line 79
    :cond_6
    move p2, p1

    .line 80
    goto :goto_7

    .line 81
    :cond_7
    :goto_6
    move p2, p3

    .line 82
    :goto_7
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    if-eq p4, v0, :cond_9

    .line 86
    .line 87
    const/4 v0, 0x4

    .line 88
    if-ne p4, v0, :cond_8

    .line 89
    .line 90
    goto :goto_8

    .line 91
    :cond_8
    move v0, p1

    .line 92
    goto :goto_9

    .line 93
    :cond_9
    :goto_8
    move v0, p3

    .line 94
    :goto_9
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    .line 95
    .line 96
    if-nez p2, :cond_a

    .line 97
    .line 98
    if-nez v0, :cond_a

    .line 99
    .line 100
    const/4 p2, 0x5

    .line 101
    if-eq p4, p2, :cond_a

    .line 102
    .line 103
    const/4 p2, -0x1

    .line 104
    if-eq p4, p2, :cond_a

    .line 105
    .line 106
    move p1, p3

    .line 107
    :cond_a
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    .line 108
    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/core/JsonToken;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/core/JsonToken;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonToken;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/core/JsonToken;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final asByteArray()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final asCharArray()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public final asString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    .line 2
    .line 3
    return v0
.end method

.method public final isBoolean()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isBoolean:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isNumeric()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isNumber:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isScalarValue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isStructEnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isStructStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    .line 2
    .line 3
    return v0
.end method
