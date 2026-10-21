.class public final LK3/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)LK3/H;
    .locals 2

    .line 4
    new-instance v0, LK3/H;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LK3/H;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)LK3/H;
    .locals 1

    .line 3
    new-instance v0, LK3/H;

    invoke-direct {v0, p1, p2}, LK3/H;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LK3/G;->createFromParcel(Landroid/os/Parcel;)LK3/H;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, LK3/G;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)LK3/H;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[LK3/H;
    .locals 0

    .line 2
    new-array p1, p1, [LK3/H;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LK3/G;->newArray(I)[LK3/H;

    move-result-object p1

    return-object p1
.end method
