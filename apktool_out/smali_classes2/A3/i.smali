.class public final LA3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)LA3/j;
    .locals 2

    .line 4
    new-instance v0, LA3/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LA3/j;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)LA3/j;
    .locals 1

    .line 3
    new-instance v0, LA3/j;

    invoke-direct {v0, p1, p2}, LA3/j;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA3/i;->createFromParcel(Landroid/os/Parcel;)LA3/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, LA3/i;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)LA3/j;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[LA3/j;
    .locals 0

    .line 2
    new-array p1, p1, [LA3/j;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA3/i;->newArray(I)[LA3/j;

    move-result-object p1

    return-object p1
.end method
