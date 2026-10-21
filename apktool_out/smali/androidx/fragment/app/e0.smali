.class public final Landroidx/fragment/app/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/f0;
    .locals 2

    .line 2
    new-instance v0, Landroidx/fragment/app/f0;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/f0;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Landroidx/fragment/app/f0;->e:I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/e0;->createFromParcel(Landroid/os/Parcel;)Landroidx/fragment/app/f0;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/fragment/app/f0;
    .locals 0

    .line 2
    new-array p1, p1, [Landroidx/fragment/app/f0;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/e0;->newArray(I)[Landroidx/fragment/app/f0;

    move-result-object p1

    return-object p1
.end method
