.class public final Lb0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY/i;


# static fields
.field public static final a:Lb0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb0/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb0/g;->a:Lb0/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getDefaultValue()Lb0/c;
    .locals 1

    .line 2
    invoke-static {}, Lb0/d;->createEmpty()Lb0/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb0/g;->getDefaultValue()Lb0/c;

    move-result-object v0

    return-object v0
.end method

.method public final getFileExtension()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "preferences_pb"

    .line 2
    .line 3
    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;Ly5/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/datastore/core/CorruptionException;
        }
    .end annotation

    .line 1
    sget-object p2, La0/c;->a:La0/b;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, La0/b;->readFrom(Ljava/io/InputStream;)La0/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    new-array p2, p2, [Lb0/b;

    .line 9
    .line 10
    invoke-static {p2}, Lb0/d;->createMutable([Lb0/b;)Landroidx/datastore/preferences/core/MutablePreferences;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1}, La0/f;->getPreferencesMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "preferencesProto.preferencesMap"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, La0/j;

    .line 54
    .line 55
    const-string v2, "name"

    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "value"

    .line 61
    .line 62
    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, La0/j;->getValueCase()Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-nez v2, :cond_0

    .line 70
    .line 71
    const/4 v2, -0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    sget-object v3, Lb0/f;->a:[I

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    aget v2, v3, v2

    .line 80
    .line 81
    :goto_1
    const/4 v3, 0x2

    .line 82
    const/4 v4, 0x0

    .line 83
    packed-switch v2, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    :pswitch_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 87
    .line 88
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :pswitch_1
    new-instance p1, Landroidx/datastore/core/CorruptionException;

    .line 93
    .line 94
    const-string p2, "Value not set."

    .line 95
    .line 96
    invoke-direct {p1, p2, v4, v3, v4}, Landroidx/datastore/core/CorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/g;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :pswitch_2
    invoke-static {v1}, Lb0/e;->stringSetKey(Ljava/lang/String;)Lb0/a;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0}, La0/j;->getStringSet()La0/h;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, La0/h;->getStringsList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v2, "value.stringSet.stringsList"

    .line 113
    .line 114
    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    check-cast v0, Ljava/lang/Iterable;

    .line 118
    .line 119
    invoke-static {v0}, Lv5/u;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p2, v1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Lb0/a;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :pswitch_3
    invoke-static {v1}, Lb0/e;->stringKey(Ljava/lang/String;)Lb0/a;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0}, La0/j;->getString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v2, "value.string"

    .line 136
    .line 137
    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Lb0/a;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_4
    invoke-static {v1}, Lb0/e;->longKey(Ljava/lang/String;)Lb0/a;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0}, La0/j;->getLong()J

    .line 149
    .line 150
    .line 151
    move-result-wide v2

    .line 152
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p2, v1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Lb0/a;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_5
    invoke-static {v1}, Lb0/e;->intKey(Ljava/lang/String;)Lb0/a;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0}, La0/j;->getInteger()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p2, v1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Lb0/a;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :pswitch_6
    invoke-static {v1}, Lb0/e;->doubleKey(Ljava/lang/String;)Lb0/a;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0}, La0/j;->getDouble()D

    .line 183
    .line 184
    .line 185
    move-result-wide v2

    .line 186
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p2, v1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Lb0/a;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :pswitch_7
    invoke-static {v1}, Lb0/e;->floatKey(Ljava/lang/String;)Lb0/a;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0}, La0/j;->getFloat()F

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p2, v1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Lb0/a;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :pswitch_8
    invoke-static {v1}, Lb0/e;->booleanKey(Ljava/lang/String;)Lb0/a;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0}, La0/j;->getBoolean()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p2, v1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Lb0/a;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_9
    new-instance p1, Landroidx/datastore/core/CorruptionException;

    .line 230
    .line 231
    const-string p2, "Value case is null."

    .line 232
    .line 233
    invoke-direct {p1, p2, v4, v3, v4}, Landroidx/datastore/core/CorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/g;)V

    .line 234
    .line 235
    .line 236
    throw p1

    .line 237
    :cond_1
    invoke-virtual {p2}, Lb0/c;->toPreferences()Lb0/c;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    return-object p1

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeTo(Lb0/c;Ljava/io/OutputStream;Ly5/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/c;",
            "Ljava/io/OutputStream;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/datastore/core/CorruptionException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lb0/c;->asMap()Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-static {}, La0/f;->newBuilder()La0/d;

    move-result-object p3

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb0/a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {v1}, Lb0/a;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-static {}, La0/j;->newBuilder()La0/i;

    move-result-object v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, La0/i;->setBoolean(Z)La0/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/D;->build()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v0

    const-string v2, "newBuilder().setBoolean(value).build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La0/j;

    goto/16 :goto_1

    .line 7
    :cond_0
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_1

    invoke-static {}, La0/j;->newBuilder()La0/i;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, La0/i;->setFloat(F)La0/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/D;->build()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v0

    const-string v2, "newBuilder().setFloat(value).build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La0/j;

    goto/16 :goto_1

    .line 8
    :cond_1
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_2

    invoke-static {}, La0/j;->newBuilder()La0/i;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, La0/i;->setDouble(D)La0/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/D;->build()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v0

    const-string v2, "newBuilder().setDouble(value).build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La0/j;

    goto/16 :goto_1

    .line 9
    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-static {}, La0/j;->newBuilder()La0/i;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, La0/i;->setInteger(I)La0/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/D;->build()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v0

    const-string v2, "newBuilder().setInteger(value).build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La0/j;

    goto :goto_1

    .line 10
    :cond_3
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_4

    invoke-static {}, La0/j;->newBuilder()La0/i;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, La0/i;->setLong(J)La0/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/D;->build()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v0

    const-string v2, "newBuilder().setLong(value).build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La0/j;

    goto :goto_1

    .line 11
    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {}, La0/j;->newBuilder()La0/i;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, La0/i;->setString(Ljava/lang/String;)La0/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/D;->build()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v0

    const-string v2, "newBuilder().setString(value).build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La0/j;

    goto :goto_1

    .line 12
    :cond_5
    instance-of v2, v0, Ljava/util/Set;

    if-eqz v2, :cond_6

    .line 13
    invoke-static {}, La0/j;->newBuilder()La0/i;

    move-result-object v2

    .line 14
    invoke-static {}, La0/h;->newBuilder()La0/g;

    move-result-object v3

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v3, v0}, La0/g;->addAllStrings(Ljava/lang/Iterable;)La0/g;

    move-result-object v0

    .line 15
    invoke-virtual {v2, v0}, La0/i;->setStringSet(La0/g;)La0/i;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/D;->build()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v0

    .line 17
    const-string v2, "newBuilder().setStringSet(\n                    StringSet.newBuilder().addAllStrings(value as Set<String>)\n                ).build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La0/j;

    .line 18
    :goto_1
    invoke-virtual {p3, v1, v0}, La0/d;->putPreferences(Ljava/lang/String;La0/j;)La0/d;

    goto/16 :goto_0

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PreferencesSerializer does not support type: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/j;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_7
    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/D;->build()Landroidx/datastore/preferences/protobuf/F;

    move-result-object p1

    check-cast p1, La0/f;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/b;->writeTo(Ljava/io/OutputStream;)V

    .line 23
    sget-object p1, Lu5/j;->a:Lu5/j;

    return-object p1
.end method

.method public bridge synthetic writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Ly5/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lb0/c;

    invoke-virtual {p0, p1, p2, p3}, Lb0/g;->writeTo(Lb0/c;Ljava/io/OutputStream;Ly5/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
