.class public final Lv1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv1/o;->createFromParcel(Landroid/os/Parcel;)Lv1/p;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lv1/p;
    .locals 1

    .line 2
    new-instance v0, Lv1/p;

    invoke-direct {v0, p1}, Lv1/p;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv1/o;->newArray(I)[Lv1/p;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lv1/p;
    .locals 0

    .line 2
    new-array p1, p1, [Lv1/p;

    return-object p1
.end method
