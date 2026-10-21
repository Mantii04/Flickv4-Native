.class public final Ll3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll3/h;->createFromParcel(Landroid/os/Parcel;)Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Ll3/h;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ll3/i;
    .locals 2

    .line 4
    new-instance v0, Ll3/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ll3/i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ll3/i;
    .locals 1

    .line 3
    new-instance v0, Ll3/i;

    invoke-direct {v0, p1, p2}, Ll3/i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll3/h;->newArray(I)[Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ll3/i;
    .locals 0

    .line 2
    new-array p1, p1, [Ll3/i;

    return-object p1
.end method
