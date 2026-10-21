.class public final Lm1/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm1/N0;->createFromParcel(Landroid/os/Parcel;)Lm1/O0;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lm1/O0;
    .locals 4

    .line 2
    new-instance v0, Lm1/O0;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lm1/O0;->b:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lm1/O0;->e:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lm1/O0;->f:I

    if-lez v1, :cond_0

    .line 7
    new-array v1, v1, [I

    iput-object v1, v0, Lm1/O0;->j:[I

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lm1/O0;->m:I

    if-lez v1, :cond_1

    .line 10
    new-array v1, v1, [I

    iput-object v1, v0, Lm1/O0;->n:[I

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lm1/O0;->q:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lm1/O0;->r:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_4

    move v2, v3

    :cond_4
    iput-boolean v2, v0, Lm1/O0;->s:Z

    .line 15
    const-class v1, Lm1/L0;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    .line 17
    iput-object p1, v0, Lm1/O0;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm1/N0;->newArray(I)[Lm1/O0;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lm1/O0;
    .locals 0

    .line 2
    new-array p1, p1, [Lm1/O0;

    return-object p1
.end method
