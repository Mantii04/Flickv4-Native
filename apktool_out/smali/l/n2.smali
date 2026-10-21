.class public final Ll/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll/n2;->createFromParcel(Landroid/os/Parcel;)Ll/o2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Ll/n2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ll/o2;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ll/o2;
    .locals 2

    .line 4
    new-instance v0, Ll/o2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ll/o2;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ll/o2;
    .locals 1

    .line 3
    new-instance v0, Ll/o2;

    invoke-direct {v0, p1, p2}, Ll/o2;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll/n2;->newArray(I)[Ll/o2;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ll/o2;
    .locals 0

    .line 2
    new-array p1, p1, [Ll/o2;

    return-object p1
.end method
