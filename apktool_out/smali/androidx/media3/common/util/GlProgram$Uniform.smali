.class final Landroidx/media3/common/util/GlProgram$Uniform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uniform"
.end annotation


# instance fields
.field private final floatValue:[F

.field private final intValue:[I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private texIdValue:I

.field private texMinFilter:I

.field private texUnitIndex:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 9
    .line 10
    const/16 p1, 0x10

    .line 11
    .line 12
    new-array p1, p1, [F

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 15
    .line 16
    const/4 p1, 0x4

    .line 17
    new-array p1, p1, [I

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 20
    .line 21
    const/16 p1, 0x2601

    .line 22
    .line 23
    iput p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    .line 24
    .line 25
    return-void
.end method

.method public static create(II)Landroidx/media3/common/util/GlProgram$Uniform;
    .locals 12

    .line 1
    const/4 v1, 0x1

    .line 2
    new-array v2, v1, [I

    .line 3
    .line 4
    const v3, 0x8b87

    .line 5
    .line 6
    .line 7
    const/4 v11, 0x0

    .line 8
    invoke-static {p0, v3, v2, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 9
    .line 10
    .line 11
    new-array v7, v1, [I

    .line 12
    .line 13
    aget v2, v2, v11

    .line 14
    .line 15
    new-array v9, v2, [B

    .line 16
    .line 17
    new-array v3, v1, [I

    .line 18
    .line 19
    new-array v5, v1, [I

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    move v0, p0

    .line 26
    move v1, p1

    .line 27
    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v9}, Landroidx/media3/common/util/GlProgram;->access$000([B)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-direct {v1, v9, v11, v2}, Ljava/lang/String;-><init>([BII)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v1}, Landroidx/media3/common/util/GlProgram;->access$200(ILjava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    new-instance v2, Landroidx/media3/common/util/GlProgram$Uniform;

    .line 44
    .line 45
    aget v3, v7, v11

    .line 46
    .line 47
    invoke-direct {v2, v1, v0, v3}, Landroidx/media3/common/util/GlProgram$Uniform;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    return-object v2
.end method


# virtual methods
.method public bind(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 2
    .line 3
    const/16 v1, 0x1404

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_8

    .line 8
    .line 9
    const/16 v1, 0x1406

    .line 10
    .line 11
    if-eq v0, v1, :cond_7

    .line 12
    .line 13
    const v1, 0x8b5e    # 4.9996E-41f

    .line 14
    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const v4, 0x8be7

    .line 19
    .line 20
    .line 21
    if-eq v0, v4, :cond_0

    .line 22
    .line 23
    const v4, 0x8d66

    .line 24
    .line 25
    .line 26
    if-eq v0, v4, :cond_0

    .line 27
    .line 28
    packed-switch v0, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    packed-switch v0, :pswitch_data_1

    .line 32
    .line 33
    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Unexpected uniform type: "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :pswitch_0
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 59
    .line 60
    invoke-static {p1, v2, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_1
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 68
    .line 69
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 70
    .line 71
    invoke-static {p1, v2, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_2
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 81
    .line 82
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform4iv(II[II)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_3
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 90
    .line 91
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 92
    .line 93
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform3iv(II[II)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_4
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 101
    .line 102
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 103
    .line 104
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_5
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 112
    .line 113
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 114
    .line 115
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_6
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 123
    .line 124
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 125
    .line 126
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :pswitch_7
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 134
    .line 135
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 136
    .line 137
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_0
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    const v0, 0x84c0

    .line 149
    .line 150
    .line 151
    iget v2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    .line 152
    .line 153
    add-int/2addr v2, v0

    .line 154
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 158
    .line 159
    .line 160
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 161
    .line 162
    const/16 v2, 0xde1

    .line 163
    .line 164
    if-ne v0, v1, :cond_1

    .line 165
    .line 166
    move v3, v2

    .line 167
    goto :goto_0

    .line 168
    :cond_1
    const v3, 0x8d65

    .line 169
    .line 170
    .line 171
    :goto_0
    iget v4, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    .line 172
    .line 173
    if-eq v0, v1, :cond_3

    .line 174
    .line 175
    if-nez p1, :cond_2

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_2
    const/16 p1, 0x2600

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    :goto_1
    const/16 p1, 0x2601

    .line 182
    .line 183
    :goto_2
    invoke-static {v3, v4, p1}, Landroidx/media3/common/util/GlUtil;->bindTexture(III)V

    .line 184
    .line 185
    .line 186
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 187
    .line 188
    if-ne p1, v1, :cond_5

    .line 189
    .line 190
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    .line 191
    .line 192
    const/16 v0, 0x2703

    .line 193
    .line 194
    if-ne p1, v0, :cond_4

    .line 195
    .line 196
    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 200
    .line 201
    .line 202
    :cond_4
    const/16 p1, 0x2801

    .line 203
    .line 204
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    .line 205
    .line 206
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 207
    .line 208
    .line 209
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 210
    .line 211
    .line 212
    :cond_5
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 213
    .line 214
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    .line 215
    .line 216
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    const-string v0, "No call to setSamplerTexId() before bind."

    .line 226
    .line 227
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1

    .line 231
    :cond_7
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 232
    .line 233
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 234
    .line 235
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 236
    .line 237
    .line 238
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_8
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 243
    .line 244
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 245
    .line 246
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 247
    .line 248
    .line 249
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :pswitch_data_0
    .packed-switch 0x8b50
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :pswitch_data_1
    .packed-switch 0x8b5b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFloat(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public setFloats([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setInt(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public setInts([I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSamplerTexId(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    .line 4
    .line 5
    return-void
.end method

.method public setTexMinFilter(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    .line 2
    .line 3
    return-void
.end method
