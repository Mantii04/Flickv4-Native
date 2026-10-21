.class public final Lcom/google/android/gms/cast/internal/zzab;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/internal/zzab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:D

.field public final e:Z

.field public final f:I

.field public final j:Lcom/google/android/gms/cast/ApplicationMetadata;

.field public final m:I

.field public final n:Lcom/google/android/gms/cast/zzav;

.field public final p:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/internal/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v7, 0x0

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/cast/internal/zzab;-><init>(DZILcom/google/android/gms/cast/ApplicationMetadata;ILcom/google/android/gms/cast/zzav;D)V

    return-void
.end method

.method public constructor <init>(DZILcom/google/android/gms/cast/ApplicationMetadata;ILcom/google/android/gms/cast/zzav;D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/cast/internal/zzab;->b:D

    iput-boolean p3, p0, Lcom/google/android/gms/cast/internal/zzab;->e:Z

    iput p4, p0, Lcom/google/android/gms/cast/internal/zzab;->f:I

    iput-object p5, p0, Lcom/google/android/gms/cast/internal/zzab;->j:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput p6, p0, Lcom/google/android/gms/cast/internal/zzab;->m:I

    iput-object p7, p0, Lcom/google/android/gms/cast/internal/zzab;->n:Lcom/google/android/gms/cast/zzav;

    iput-wide p8, p0, Lcom/google/android/gms/cast/internal/zzab;->p:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/internal/zzab;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzab;

    .line 12
    .line 13
    iget-wide v3, p1, Lcom/google/android/gms/cast/internal/zzab;->b:D

    .line 14
    .line 15
    iget-wide v5, p0, Lcom/google/android/gms/cast/internal/zzab;->b:D

    .line 16
    .line 17
    cmpl-double v1, v5, v3

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzab;->e:Z

    .line 22
    .line 23
    iget-boolean v3, p1, Lcom/google/android/gms/cast/internal/zzab;->e:Z

    .line 24
    .line 25
    if-ne v1, v3, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/google/android/gms/cast/internal/zzab;->f:I

    .line 28
    .line 29
    iget v3, p1, Lcom/google/android/gms/cast/internal/zzab;->f:I

    .line 30
    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzab;->j:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 34
    .line 35
    iget-object v3, p1, Lcom/google/android/gms/cast/internal/zzab;->j:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget v1, p0, Lcom/google/android/gms/cast/internal/zzab;->m:I

    .line 44
    .line 45
    iget v3, p1, Lcom/google/android/gms/cast/internal/zzab;->m:I

    .line 46
    .line 47
    if-ne v1, v3, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzab;->n:Lcom/google/android/gms/cast/zzav;

    .line 50
    .line 51
    invoke-static {v1, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-wide v3, p0, Lcom/google/android/gms/cast/internal/zzab;->p:D

    .line 58
    .line 59
    iget-wide v5, p1, Lcom/google/android/gms/cast/internal/zzab;->p:D

    .line 60
    .line 61
    cmpl-double p1, v3, v5

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    return v0

    .line 66
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzab;->b:D

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzab;->e:Z

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/google/android/gms/cast/internal/zzab;->f:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Lcom/google/android/gms/cast/internal/zzab;->m:I

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-wide v4, p0, Lcom/google/android/gms/cast/internal/zzab;->p:D

    .line 26
    .line 27
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/google/android/gms/cast/internal/zzab;->j:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 32
    .line 33
    iget-object v6, p0, Lcom/google/android/gms/cast/internal/zzab;->n:Lcom/google/android/gms/cast/zzav;

    .line 34
    .line 35
    const/4 v7, 0x7

    .line 36
    new-array v7, v7, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    aput-object v0, v7, v8

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    aput-object v1, v7, v0

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    aput-object v2, v7, v0

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    aput-object v5, v7, v0

    .line 49
    .line 50
    const/4 v0, 0x4

    .line 51
    aput-object v3, v7, v0

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    aput-object v6, v7, v0

    .line 55
    .line 56
    const/4 v0, 0x6

    .line 57
    aput-object v4, v7, v0

    .line 58
    .line 59
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzab;->b:D

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v1, v2, v3

    .line 14
    .line 15
    const-string v1, "volume=%f"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    iget-wide v2, p0, Lcom/google/android/gms/cast/internal/zzab;->b:D

    .line 7
    .line 8
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    iget-boolean v2, p0, Lcom/google/android/gms/cast/internal/zzab;->e:Z

    .line 13
    .line 14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    iget v2, p0, Lcom/google/android/gms/cast/internal/zzab;->f:I

    .line 19
    .line 20
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzab;->j:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    iget v2, p0, Lcom/google/android/gms/cast/internal/zzab;->m:I

    .line 32
    .line 33
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzab;->n:Lcom/google/android/gms/cast/zzav;

    .line 38
    .line 39
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 40
    .line 41
    .line 42
    const/16 p2, 0x8

    .line 43
    .line 44
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzab;->p:D

    .line 45
    .line 46
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final zza()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzab;->p:D

    return-wide v0
.end method

.method public final zzb()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzab;->b:D

    return-wide v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/internal/zzab;->f:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/internal/zzab;->m:I

    return v0
.end method

.method public final zze()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzab;->j:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/cast/zzav;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzab;->n:Lcom/google/android/gms/cast/zzav;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzab;->e:Z

    return v0
.end method
