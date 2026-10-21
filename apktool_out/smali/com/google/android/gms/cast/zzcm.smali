.class public final Lcom/google/android/gms/cast/zzcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    move-object v9, v2

    .line 14
    move-object/from16 v24, v9

    .line 15
    .line 16
    move-object/from16 v27, v24

    .line 17
    .line 18
    move-object/from16 v29, v27

    .line 19
    .line 20
    move-object/from16 v31, v29

    .line 21
    .line 22
    move-object/from16 v32, v31

    .line 23
    .line 24
    move-object/from16 v33, v32

    .line 25
    .line 26
    move-object/from16 v34, v33

    .line 27
    .line 28
    move v12, v3

    .line 29
    move v15, v12

    .line 30
    move/from16 v16, v15

    .line 31
    .line 32
    move/from16 v23, v16

    .line 33
    .line 34
    move/from16 v25, v23

    .line 35
    .line 36
    move/from16 v26, v25

    .line 37
    .line 38
    move/from16 v28, v26

    .line 39
    .line 40
    move/from16 v30, v28

    .line 41
    .line 42
    move-wide v13, v4

    .line 43
    move-wide/from16 v21, v13

    .line 44
    .line 45
    move-wide v10, v6

    .line 46
    move-wide/from16 v17, v10

    .line 47
    .line 48
    move-wide/from16 v19, v17

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ge v2, v1, :cond_0

    .line 55
    .line 56
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    packed-switch v3, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_0
    sget-object v3, Lcom/google/android/gms/cast/MediaQueueData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 72
    .line 73
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/google/android/gms/cast/MediaQueueData;

    .line 78
    .line 79
    move-object/from16 v34, v2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_1
    sget-object v3, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    .line 84
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 89
    .line 90
    move-object/from16 v33, v2

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_2
    sget-object v3, Lcom/google/android/gms/cast/VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    .line 95
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lcom/google/android/gms/cast/VideoInfo;

    .line 100
    .line 101
    move-object/from16 v32, v2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_3
    sget-object v3, Lcom/google/android/gms/cast/AdBreakStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    .line 106
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lcom/google/android/gms/cast/AdBreakStatus;

    .line 111
    .line 112
    move-object/from16 v31, v2

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    move/from16 v30, v2

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_5
    sget-object v3, Lcom/google/android/gms/cast/MediaQueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 123
    .line 124
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    move-object/from16 v29, v2

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :pswitch_6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    move/from16 v28, v2

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :pswitch_7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    move-object/from16 v27, v2

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    move/from16 v26, v2

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :pswitch_9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    move/from16 v25, v2

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :pswitch_a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createLongArray(Landroid/os/Parcel;I)[J

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    move-object/from16 v24, v2

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :pswitch_b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    move/from16 v23, v2

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :pswitch_c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readDouble(Landroid/os/Parcel;I)D

    .line 174
    .line 175
    .line 176
    move-result-wide v2

    .line 177
    move-wide/from16 v21, v2

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    move-wide/from16 v19, v2

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :pswitch_e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 190
    .line 191
    .line 192
    move-result-wide v2

    .line 193
    move-wide/from16 v17, v2

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :pswitch_f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    move/from16 v16, v2

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    move v15, v2

    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :pswitch_11
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readDouble(Landroid/os/Parcel;I)D

    .line 213
    .line 214
    .line 215
    move-result-wide v2

    .line 216
    move-wide v13, v2

    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :pswitch_12
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    move v12, v2

    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :pswitch_13
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 227
    .line 228
    .line 229
    move-result-wide v2

    .line 230
    move-wide v10, v2

    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :pswitch_14
    sget-object v3, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    .line 235
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Lcom/google/android/gms/cast/MediaInfo;

    .line 240
    .line 241
    move-object v9, v2

    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 245
    .line 246
    .line 247
    new-instance v8, Lcom/google/android/gms/cast/MediaStatus;

    .line 248
    .line 249
    invoke-direct/range {v8 .. v34}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V

    .line 250
    .line 251
    .line 252
    return-object v8

    .line 253
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaStatus;

    .line 2
    .line 3
    return-object p1
.end method
