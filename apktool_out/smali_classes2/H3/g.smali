.class public final LH3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)LH3/h;
    .locals 2

    .line 4
    new-instance v0, LH3/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LH3/h;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)LH3/h;
    .locals 1

    .line 3
    new-instance v0, LH3/h;

    invoke-direct {v0, p1, p2}, LH3/h;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LH3/g;->createFromParcel(Landroid/os/Parcel;)LH3/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, LH3/g;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)LH3/h;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[LH3/h;
    .locals 0

    .line 2
    new-array p1, p1, [LH3/h;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LH3/g;->newArray(I)[LH3/h;

    move-result-object p1

    return-object p1
.end method
