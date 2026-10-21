.class public final Landroidx/activity/result/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/m;
    .locals 1

    const-string v0, "inParcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/activity/result/m;

    invoke-direct {v0, p1}, Landroidx/activity/result/m;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/activity/result/k;->createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/m;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/activity/result/m;
    .locals 0

    .line 2
    new-array p1, p1, [Landroidx/activity/result/m;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/activity/result/k;->newArray(I)[Landroidx/activity/result/m;

    move-result-object p1

    return-object p1
.end method
