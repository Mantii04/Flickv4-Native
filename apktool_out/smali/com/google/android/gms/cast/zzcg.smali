.class public final Lcom/google/android/gms/cast/zzcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    move-object v5, v3

    .line 10
    move v6, v4

    .line 11
    move-object v4, v5

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    if-ge v7, v0, :cond_5

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    invoke-static {v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    const/4 v9, 0x2

    .line 27
    if-eq v8, v9, :cond_4

    .line 28
    .line 29
    const/4 v9, 0x3

    .line 30
    if-eq v8, v9, :cond_3

    .line 31
    .line 32
    const/4 v9, 0x4

    .line 33
    if-eq v8, v9, :cond_2

    .line 34
    .line 35
    const/4 v9, 0x5

    .line 36
    if-eq v8, v9, :cond_1

    .line 37
    .line 38
    const/4 v9, 0x6

    .line 39
    if-eq v8, v9, :cond_0

    .line 40
    .line 41
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readDouble(Landroid/os/Parcel;I)D

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sget-object v5, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    .line 52
    invoke-static {p1, v7, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget-object v4, Lcom/google/android/gms/cast/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    .line 59
    invoke-static {p1, v7, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 78
    .line 79
    invoke-direct {p1}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 80
    .line 81
    .line 82
    iput v6, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->b:I

    .line 83
    .line 84
    iput-object v3, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->e:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v4, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->f:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v5, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->j:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-wide v1, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->m:D

    .line 91
    .line 92
    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 2
    .line 3
    return-object p1
.end method
