.class public final Lc0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lc0/h;
    .locals 2

    .line 4
    new-instance v0, Lc0/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc0/h;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lc0/h;
    .locals 1

    .line 3
    new-instance v0, Lc0/h;

    invoke-direct {v0, p1, p2}, Lc0/h;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc0/g;->createFromParcel(Landroid/os/Parcel;)Lc0/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lc0/g;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lc0/h;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lc0/h;
    .locals 0

    .line 2
    new-array p1, p1, [Lc0/h;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc0/g;->newArray(I)[Lc0/h;

    move-result-object p1

    return-object p1
.end method
