.class public final Lcom/google/android/material/datepicker/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/i;
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/i;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/i;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/h;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/i;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/i;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/google/android/material/datepicker/i;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/h;->newArray(I)[Lcom/google/android/material/datepicker/i;

    move-result-object p1

    return-object p1
.end method
