.class Lflix/com/vision/models/Video$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/models/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lflix/com/vision/models/Video;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lflix/com/vision/models/Video;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lflix/com/vision/models/Video$1;->createFromParcel(Landroid/os/Parcel;)Lflix/com/vision/models/Video;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lflix/com/vision/models/Video;
    .locals 0

    .line 2
    new-array p1, p1, [Lflix/com/vision/models/Video;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lflix/com/vision/models/Video$1;->newArray(I)[Lflix/com/vision/models/Video;

    move-result-object p1

    return-object p1
.end method
