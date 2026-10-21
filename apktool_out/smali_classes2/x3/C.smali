.class public final Lx3/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lx3/C;->createFromParcel(Landroid/os/Parcel;)Lx3/D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lx3/C;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lx3/D;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lx3/D;
    .locals 2

    .line 4
    new-instance v0, Lx3/D;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lx3/D;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lx3/D;
    .locals 1

    .line 3
    new-instance v0, Lx3/D;

    invoke-direct {v0, p1, p2}, Lx3/D;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lx3/C;->newArray(I)[Lx3/D;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lx3/D;
    .locals 0

    .line 2
    new-array p1, p1, [Lx3/D;

    return-object p1
.end method
