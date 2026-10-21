.class public final Landroidx/datastore/preferences/protobuf/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/datastore/preferences/protobuf/o0;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/A;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/A;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/o0;

    const/16 v1, 0x10

    .line 3
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/u0;-><init>(I)V

    .line 4
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/A;->a:Landroidx/datastore/preferences/protobuf/o0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    sget p1, Landroidx/datastore/preferences/protobuf/u0;->p:I

    .line 6
    new-instance p1, Landroidx/datastore/preferences/protobuf/o0;

    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, v0}, Landroidx/datastore/preferences/protobuf/u0;-><init>(I)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/A;->a:Landroidx/datastore/preferences/protobuf/o0;

    .line 10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/A;->makeImmutable()V

    .line 11
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/A;->makeImmutable()V

    return-void
.end method

.method public static a(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->j:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    packed-switch p0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance p0, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/s;->computeSInt64SizeNoTag(J)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s;->computeSInt32SizeNoTag(I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/s;->computeSFixed64SizeNoTag(J)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s;->computeSFixed32SizeNoTag(I)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s;->computeEnumSizeNoTag(I)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s;->computeUInt32SizeNoTag(I)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :pswitch_6
    instance-of p0, p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 99
    .line 100
    if-eqz p0, :cond_1

    .line 101
    .line 102
    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 103
    .line 104
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s;->computeBytesSizeNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_1
    check-cast p2, [B

    .line 111
    .line 112
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s;->computeByteArraySizeNoTag([B)I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :pswitch_7
    check-cast p2, Landroidx/datastore/preferences/protobuf/a0;

    .line 119
    .line 120
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s;->computeMessageSizeNoTag(Landroidx/datastore/preferences/protobuf/a0;)I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :pswitch_8
    check-cast p2, Landroidx/datastore/preferences/protobuf/a0;

    .line 127
    .line 128
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s;->computeGroupSizeNoTag(Landroidx/datastore/preferences/protobuf/a0;)I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    goto :goto_0

    .line 133
    :pswitch_9
    instance-of p0, p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 134
    .line 135
    if-eqz p0, :cond_2

    .line 136
    .line 137
    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 138
    .line 139
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s;->computeBytesSizeNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    check-cast p2, Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    goto :goto_0

    .line 151
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s;->computeBoolSizeNoTag(Z)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    goto :goto_0

    .line 162
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s;->computeFixed32SizeNoTag(I)I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    goto :goto_0

    .line 173
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/s;->computeFixed64SizeNoTag(J)I

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    goto :goto_0

    .line 184
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s;->computeInt32SizeNoTag(I)I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    goto :goto_0

    .line 195
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    .line 196
    .line 197
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 198
    .line 199
    .line 200
    move-result-wide v0

    .line 201
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/s;->computeUInt64SizeNoTag(J)I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    goto :goto_0

    .line 206
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/s;->computeInt64SizeNoTag(J)I

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    goto :goto_0

    .line 217
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s;->computeFloatSizeNoTag(F)I

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    goto :goto_0

    .line 228
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    .line 229
    .line 230
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 231
    .line 232
    .line 233
    move-result-wide v0

    .line 234
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/s;->computeDoubleSizeNoTag(D)I

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    :goto_0
    add-int/2addr p0, p1

    .line 239
    return p0

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/I;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->getJavaType()Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    packed-switch p0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    move v0, v1

    .line 20
    goto :goto_1

    .line 21
    :pswitch_0
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/a0;

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_2
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 32
    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    instance-of p0, p1, [B

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    .line 56
    .line 57
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string p1, "Wrong object type used with protocol message reflection."

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroidx/datastore/preferences/protobuf/s;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->j:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    check-cast p3, Landroidx/datastore/preferences/protobuf/a0;

    .line 6
    .line 7
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/s;->writeGroup(ILandroidx/datastore/preferences/protobuf/a0;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->getWireType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, p2, v0}, Landroidx/datastore/preferences/protobuf/s;->writeTag(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s;->writeSInt64NoTag(J)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/s;->writeSInt32NoTag(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s;->writeSFixed64NoTag(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/s;->writeSFixed32NoTag(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/s;->writeEnumNoTag(I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/s;->writeUInt32NoTag(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_6
    instance-of p1, p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    check-cast p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 91
    .line 92
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/s;->writeBytesNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    check-cast p3, [B

    .line 97
    .line 98
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/s;->writeByteArrayNoTag([B)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_7
    check-cast p3, Landroidx/datastore/preferences/protobuf/a0;

    .line 103
    .line 104
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/s;->writeMessageNoTag(Landroidx/datastore/preferences/protobuf/a0;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_8
    check-cast p3, Landroidx/datastore/preferences/protobuf/a0;

    .line 109
    .line 110
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/s;->writeGroupNoTag(Landroidx/datastore/preferences/protobuf/a0;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_9
    instance-of p1, p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 115
    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    check-cast p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 119
    .line 120
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/s;->writeBytesNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    check-cast p3, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/s;->writeStringNoTag(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/s;->writeBoolNoTag(Z)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    .line 141
    .line 142
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/s;->writeFixed32NoTag(I)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    .line 151
    .line 152
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 153
    .line 154
    .line 155
    move-result-wide p1

    .line 156
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s;->writeFixed64NoTag(J)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/s;->writeInt32NoTag(I)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    .line 171
    .line 172
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 173
    .line 174
    .line 175
    move-result-wide p1

    .line 176
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s;->writeUInt64NoTag(J)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    .line 181
    .line 182
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 183
    .line 184
    .line 185
    move-result-wide p1

    .line 186
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s;->writeInt64NoTag(J)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    .line 191
    .line 192
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/s;->writeFloatNoTag(F)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    .line 201
    .line 202
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 203
    .line 204
    .line 205
    move-result-wide p1

    .line 206
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s;->writeDoubleNoTag(D)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newFieldSet()Landroidx/datastore/preferences/protobuf/A;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/datastore/preferences/protobuf/z;",
            ">()",
            "Landroidx/datastore/preferences/protobuf/A;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/A;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/A;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public clone()Landroidx/datastore/preferences/protobuf/A;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/A;"
        }
    .end annotation

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/A;->newFieldSet()Landroidx/datastore/preferences/protobuf/A;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/A;->a:Landroidx/datastore/preferences/protobuf/o0;

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/u0;->getNumArrayEntries()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    .line 4
    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/u0;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroidx/datastore/preferences/protobuf/A;->setField(Landroidx/datastore/preferences/protobuf/z;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 6
    :cond_1
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/u0;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroidx/datastore/preferences/protobuf/A;->setField(Landroidx/datastore/preferences/protobuf/z;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/A;->clone()Landroidx/datastore/preferences/protobuf/A;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/A;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Landroidx/datastore/preferences/protobuf/A;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/A;->a:Landroidx/datastore/preferences/protobuf/o0;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/A;->a:Landroidx/datastore/preferences/protobuf/o0;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/u0;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/A;->a:Landroidx/datastore/preferences/protobuf/o0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/u0;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public makeImmutable()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/A;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/A;->a:Landroidx/datastore/preferences/protobuf/o0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/o0;->makeImmutable()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/A;->b:Z

    .line 13
    .line 14
    return-void
.end method

.method public setField(Landroidx/datastore/preferences/protobuf/z;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/z;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/z;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    instance-of v0, p2, Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    check-cast p2, Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/z;->c()Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2, v1}, Landroidx/datastore/preferences/protobuf/A;->b(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object p2, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string p2, "Wrong object type used with protocol message reflection."

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/z;->c()Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, p2}, Landroidx/datastore/preferences/protobuf/A;->b(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/A;->a:Landroidx/datastore/preferences/protobuf/o0;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/u0;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-void
.end method
