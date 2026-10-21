.class Lflix/com/vision/models/VideoSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/models/VideoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lflix/com/vision/models/VideoSource;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lflix/com/vision/models/VideoSource;
    .locals 2

    .line 2
    new-instance v0, Lflix/com/vision/models/VideoSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lflix/com/vision/models/VideoSource;-><init>(Landroid/os/Parcel;Lflix/com/vision/models/VideoSource$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lflix/com/vision/models/VideoSource$1;->createFromParcel(Landroid/os/Parcel;)Lflix/com/vision/models/VideoSource;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lflix/com/vision/models/VideoSource;
    .locals 0

    .line 2
    new-array p1, p1, [Lflix/com/vision/models/VideoSource;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lflix/com/vision/models/VideoSource$1;->newArray(I)[Lflix/com/vision/models/VideoSource;

    move-result-object p1

    return-object p1
.end method
