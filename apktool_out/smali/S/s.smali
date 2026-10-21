.class public final LS/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)LS/t;
    .locals 1

    .line 2
    new-instance v0, LS/t;

    .line 3
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, LS/t;->b:I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LS/s;->createFromParcel(Landroid/os/Parcel;)LS/t;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[LS/t;
    .locals 0

    .line 2
    new-array p1, p1, [LS/t;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LS/s;->newArray(I)[LS/t;

    move-result-object p1

    return-object p1
.end method
