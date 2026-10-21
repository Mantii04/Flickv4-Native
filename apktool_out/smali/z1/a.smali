.class public final Lz1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/versionedparcelable/ParcelImpl;
    .locals 1

    .line 2
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lz1/a;->createFromParcel(Landroid/os/Parcel;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/versionedparcelable/ParcelImpl;
    .locals 0

    .line 2
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lz1/a;->newArray(I)[Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p1

    return-object p1
.end method
