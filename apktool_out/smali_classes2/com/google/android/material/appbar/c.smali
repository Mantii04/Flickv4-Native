.class public final Lcom/google/android/material/appbar/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/appbar/d;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/android/material/appbar/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/appbar/d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/appbar/d;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/material/appbar/d;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/appbar/d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/c;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/appbar/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/c;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/appbar/d;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/appbar/d;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/google/android/material/appbar/d;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/c;->newArray(I)[Lcom/google/android/material/appbar/d;

    move-result-object p1

    return-object p1
.end method
