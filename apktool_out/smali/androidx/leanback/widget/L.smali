.class public final Landroidx/leanback/widget/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/leanback/widget/M;
    .locals 2

    .line 2
    new-instance v0, Landroidx/leanback/widget/M;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/leanback/widget/M;->e:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroidx/leanback/widget/M;->b:I

    .line 6
    const-class v1, Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Landroidx/leanback/widget/M;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/L;->createFromParcel(Landroid/os/Parcel;)Landroidx/leanback/widget/M;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/leanback/widget/M;
    .locals 0

    .line 2
    new-array p1, p1, [Landroidx/leanback/widget/M;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/L;->newArray(I)[Landroidx/leanback/widget/M;

    move-result-object p1

    return-object p1
.end method
