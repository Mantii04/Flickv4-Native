.class public final Ly/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly/h;->createFromParcel(Landroid/os/Parcel;)Ly/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Ly/h;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ly/i;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ly/i;
    .locals 2

    .line 4
    new-instance v0, Ly/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ly/i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ly/i;
    .locals 1

    .line 3
    new-instance v0, Ly/i;

    invoke-direct {v0, p1, p2}, Ly/i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly/h;->newArray(I)[Ly/i;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ly/i;
    .locals 0

    .line 2
    new-array p1, p1, [Ly/i;

    return-object p1
.end method
