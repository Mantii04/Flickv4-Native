.class public final Lm3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm3/b;->createFromParcel(Landroid/os/Parcel;)Lm3/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lm3/b;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lm3/c;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lm3/c;
    .locals 2

    .line 4
    new-instance v0, Lm3/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lm3/c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lm3/c;
    .locals 1

    .line 3
    new-instance v0, Lm3/c;

    invoke-direct {v0, p1, p2}, Lm3/c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm3/b;->newArray(I)[Lm3/c;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lm3/c;
    .locals 0

    .line 2
    new-array p1, p1, [Lm3/c;

    return-object p1
.end method
