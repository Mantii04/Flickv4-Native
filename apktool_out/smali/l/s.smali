.class public final Ll/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll/s;->createFromParcel(Landroid/os/Parcel;)Ll/t;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ll/t;
    .locals 1

    .line 2
    new-instance v0, Ll/t;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Ll/t;->b:I

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll/s;->newArray(I)[Ll/t;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ll/t;
    .locals 0

    .line 2
    new-array p1, p1, [Ll/t;

    return-object p1
.end method
