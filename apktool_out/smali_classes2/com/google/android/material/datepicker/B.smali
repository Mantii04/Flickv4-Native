.class public final Lcom/google/android/material/datepicker/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/C;
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/C;->b(II)Lcom/google/android/material/datepicker/C;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/B;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/C;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/C;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/google/android/material/datepicker/C;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/B;->newArray(I)[Lcom/google/android/material/datepicker/C;

    move-result-object p1

    return-object p1
.end method
