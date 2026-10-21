.class public final Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:[I

.field public final e:Ljava/util/ArrayList;

.field public final f:[I

.field public final j:[I

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final p:I

.field public final q:I

.field public final r:Ljava/lang/CharSequence;

.field public final s:I

.field public final t:Ljava/lang/CharSequence;

.field public final u:Ljava/util/ArrayList;

.field public final v:Ljava/util/ArrayList;

.field public final w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/fragment/app/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->b:[I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->e:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->f:[I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->j:[I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/c;->m:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->n:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/c;->p:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/c;->q:I

    .line 38
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroidx/fragment/app/c;->r:Ljava/lang/CharSequence;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/fragment/app/c;->s:I

    .line 40
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/c;->t:Ljava/lang/CharSequence;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->u:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->v:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/c;->w:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/a;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    .line 3
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/c;->b:[I

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/v0;->g:Z

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/c;->e:Ljava/util/ArrayList;

    .line 6
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/c;->f:[I

    .line 7
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/c;->j:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    iget-object v3, p1, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/u0;

    .line 9
    iget-object v4, p0, Landroidx/fragment/app/c;->b:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroidx/fragment/app/u0;->a:I

    aput v6, v4, v2

    .line 10
    iget-object v4, p0, Landroidx/fragment/app/c;->e:Ljava/util/ArrayList;

    iget-object v6, v3, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    if-eqz v6, :cond_0

    iget-object v6, v6, Landroidx/fragment/app/C;->n:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, p0, Landroidx/fragment/app/c;->b:[I

    add-int/lit8 v6, v2, 0x2

    iget-boolean v7, v3, Landroidx/fragment/app/u0;->c:Z

    aput v7, v4, v5

    add-int/lit8 v5, v2, 0x3

    .line 12
    iget v7, v3, Landroidx/fragment/app/u0;->d:I

    aput v7, v4, v6

    add-int/lit8 v6, v2, 0x4

    .line 13
    iget v7, v3, Landroidx/fragment/app/u0;->e:I

    aput v7, v4, v5

    add-int/lit8 v5, v2, 0x5

    .line 14
    iget v7, v3, Landroidx/fragment/app/u0;->f:I

    aput v7, v4, v6

    add-int/lit8 v2, v2, 0x6

    .line 15
    iget v6, v3, Landroidx/fragment/app/u0;->g:I

    aput v6, v4, v5

    .line 16
    iget-object v4, p0, Landroidx/fragment/app/c;->f:[I

    iget-object v5, v3, Landroidx/fragment/app/u0;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v5, v4, v1

    .line 17
    iget-object v4, p0, Landroidx/fragment/app/c;->j:[I

    iget-object v3, v3, Landroidx/fragment/app/u0;->i:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget v0, p1, Landroidx/fragment/app/v0;->f:I

    iput v0, p0, Landroidx/fragment/app/c;->m:I

    .line 19
    iget-object v0, p1, Landroidx/fragment/app/v0;->h:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/c;->n:Ljava/lang/String;

    .line 20
    iget v0, p1, Landroidx/fragment/app/a;->r:I

    iput v0, p0, Landroidx/fragment/app/c;->p:I

    .line 21
    iget v0, p1, Landroidx/fragment/app/v0;->i:I

    iput v0, p0, Landroidx/fragment/app/c;->q:I

    .line 22
    iget-object v0, p1, Landroidx/fragment/app/v0;->j:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/c;->r:Ljava/lang/CharSequence;

    .line 23
    iget v0, p1, Landroidx/fragment/app/v0;->k:I

    iput v0, p0, Landroidx/fragment/app/c;->s:I

    .line 24
    iget-object v0, p1, Landroidx/fragment/app/v0;->l:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/c;->t:Ljava/lang/CharSequence;

    .line 25
    iget-object v0, p1, Landroidx/fragment/app/v0;->m:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/c;->u:Ljava/util/ArrayList;

    .line 26
    iget-object v0, p1, Landroidx/fragment/app/v0;->n:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/c;->v:Ljava/util/ArrayList;

    .line 27
    iget-boolean p1, p1, Landroidx/fragment/app/v0;->o:Z

    iput-boolean p1, p0, Landroidx/fragment/app/c;->w:Z

    return-void

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroidx/fragment/app/i0;)Landroidx/fragment/app/a;
    .locals 10

    .line 1
    new-instance v0, Landroidx/fragment/app/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/i0;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/c;->b:[I

    .line 10
    .line 11
    array-length v5, v4

    .line 12
    const/4 v6, 0x1

    .line 13
    if-ge v2, v5, :cond_2

    .line 14
    .line 15
    new-instance v5, Landroidx/fragment/app/u0;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v7, v2, 0x1

    .line 21
    .line 22
    aget v8, v4, v2

    .line 23
    .line 24
    iput v8, v5, Landroidx/fragment/app/u0;->a:I

    .line 25
    .line 26
    const/4 v8, 0x2

    .line 27
    invoke-static {v8}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_0

    .line 32
    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v9, "Instantiate "

    .line 36
    .line 37
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v9, " op #"

    .line 44
    .line 45
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v9, " base fragment #"

    .line 52
    .line 53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    aget v9, v4, v7

    .line 57
    .line 58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const-string v9, "FragmentManager"

    .line 66
    .line 67
    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    iget-object v9, p0, Landroidx/fragment/app/c;->f:[I

    .line 75
    .line 76
    aget v9, v9, v3

    .line 77
    .line 78
    aget-object v8, v8, v9

    .line 79
    .line 80
    iput-object v8, v5, Landroidx/fragment/app/u0;->h:Landroidx/lifecycle/Lifecycle$State;

    .line 81
    .line 82
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    iget-object v9, p0, Landroidx/fragment/app/c;->j:[I

    .line 87
    .line 88
    aget v9, v9, v3

    .line 89
    .line 90
    aget-object v8, v8, v9

    .line 91
    .line 92
    iput-object v8, v5, Landroidx/fragment/app/u0;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 93
    .line 94
    add-int/lit8 v8, v2, 0x2

    .line 95
    .line 96
    aget v7, v4, v7

    .line 97
    .line 98
    if-eqz v7, :cond_1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    move v6, v1

    .line 102
    :goto_1
    iput-boolean v6, v5, Landroidx/fragment/app/u0;->c:Z

    .line 103
    .line 104
    add-int/lit8 v6, v2, 0x3

    .line 105
    .line 106
    aget v7, v4, v8

    .line 107
    .line 108
    iput v7, v5, Landroidx/fragment/app/u0;->d:I

    .line 109
    .line 110
    add-int/lit8 v8, v2, 0x4

    .line 111
    .line 112
    aget v6, v4, v6

    .line 113
    .line 114
    iput v6, v5, Landroidx/fragment/app/u0;->e:I

    .line 115
    .line 116
    add-int/lit8 v9, v2, 0x5

    .line 117
    .line 118
    aget v8, v4, v8

    .line 119
    .line 120
    iput v8, v5, Landroidx/fragment/app/u0;->f:I

    .line 121
    .line 122
    add-int/lit8 v2, v2, 0x6

    .line 123
    .line 124
    aget v4, v4, v9

    .line 125
    .line 126
    iput v4, v5, Landroidx/fragment/app/u0;->g:I

    .line 127
    .line 128
    iput v7, v0, Landroidx/fragment/app/v0;->b:I

    .line 129
    .line 130
    iput v6, v0, Landroidx/fragment/app/v0;->c:I

    .line 131
    .line 132
    iput v8, v0, Landroidx/fragment/app/v0;->d:I

    .line 133
    .line 134
    iput v4, v0, Landroidx/fragment/app/v0;->e:I

    .line 135
    .line 136
    invoke-virtual {v0, v5}, Landroidx/fragment/app/v0;->a(Landroidx/fragment/app/u0;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v3, v3, 0x1

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_2
    iget v2, p0, Landroidx/fragment/app/c;->m:I

    .line 144
    .line 145
    iput v2, v0, Landroidx/fragment/app/v0;->f:I

    .line 146
    .line 147
    iget-object v2, p0, Landroidx/fragment/app/c;->n:Ljava/lang/String;

    .line 148
    .line 149
    iput-object v2, v0, Landroidx/fragment/app/v0;->h:Ljava/lang/String;

    .line 150
    .line 151
    iput-boolean v6, v0, Landroidx/fragment/app/v0;->g:Z

    .line 152
    .line 153
    iget v2, p0, Landroidx/fragment/app/c;->q:I

    .line 154
    .line 155
    iput v2, v0, Landroidx/fragment/app/v0;->i:I

    .line 156
    .line 157
    iget-object v2, p0, Landroidx/fragment/app/c;->r:Ljava/lang/CharSequence;

    .line 158
    .line 159
    iput-object v2, v0, Landroidx/fragment/app/v0;->j:Ljava/lang/CharSequence;

    .line 160
    .line 161
    iget v2, p0, Landroidx/fragment/app/c;->s:I

    .line 162
    .line 163
    iput v2, v0, Landroidx/fragment/app/v0;->k:I

    .line 164
    .line 165
    iget-object v2, p0, Landroidx/fragment/app/c;->t:Ljava/lang/CharSequence;

    .line 166
    .line 167
    iput-object v2, v0, Landroidx/fragment/app/v0;->l:Ljava/lang/CharSequence;

    .line 168
    .line 169
    iget-object v2, p0, Landroidx/fragment/app/c;->u:Ljava/util/ArrayList;

    .line 170
    .line 171
    iput-object v2, v0, Landroidx/fragment/app/v0;->m:Ljava/util/ArrayList;

    .line 172
    .line 173
    iget-object v2, p0, Landroidx/fragment/app/c;->v:Ljava/util/ArrayList;

    .line 174
    .line 175
    iput-object v2, v0, Landroidx/fragment/app/v0;->n:Ljava/util/ArrayList;

    .line 176
    .line 177
    iget-boolean v2, p0, Landroidx/fragment/app/c;->w:Z

    .line 178
    .line 179
    iput-boolean v2, v0, Landroidx/fragment/app/v0;->o:Z

    .line 180
    .line 181
    iget v2, p0, Landroidx/fragment/app/c;->p:I

    .line 182
    .line 183
    iput v2, v0, Landroidx/fragment/app/a;->r:I

    .line 184
    .line 185
    :goto_2
    iget-object v2, p0, Landroidx/fragment/app/c;->e:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-ge v1, v3, :cond_4

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Ljava/lang/String;

    .line 198
    .line 199
    if-eqz v2, :cond_3

    .line 200
    .line 201
    iget-object v3, v0, Landroidx/fragment/app/v0;->a:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Landroidx/fragment/app/u0;

    .line 208
    .line 209
    iget-object v4, p1, Landroidx/fragment/app/i0;->c:Landroidx/fragment/app/t0;

    .line 210
    .line 211
    invoke-virtual {v4, v2}, Landroidx/fragment/app/t0;->b(Ljava/lang/String;)Landroidx/fragment/app/C;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    iput-object v2, v3, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/C;

    .line 216
    .line 217
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_4
    invoke-virtual {v0, v6}, Landroidx/fragment/app/a;->c(I)V

    .line 221
    .line 222
    .line 223
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/fragment/app/c;->b:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroidx/fragment/app/c;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroidx/fragment/app/c;->f:[I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroidx/fragment/app/c;->j:[I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroidx/fragment/app/c;->m:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Landroidx/fragment/app/c;->n:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroidx/fragment/app/c;->p:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroidx/fragment/app/c;->q:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Landroidx/fragment/app/c;->r:Ljava/lang/CharSequence;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    iget p2, p0, Landroidx/fragment/app/c;->s:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Landroidx/fragment/app/c;->t:Ljava/lang/CharSequence;

    .line 53
    .line 54
    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Landroidx/fragment/app/c;->u:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Landroidx/fragment/app/c;->v:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    iget-boolean p2, p0, Landroidx/fragment/app/c;->w:Z

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
