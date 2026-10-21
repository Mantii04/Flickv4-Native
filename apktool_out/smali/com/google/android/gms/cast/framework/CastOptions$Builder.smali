.class public final Lcom/google/android/gms/cast/framework/CastOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/CastOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/google/android/gms/cast/LaunchOptions;

.field public final d:Z

.field public e:Lcom/google/android/gms/internal/cast/zzev;

.field public final f:Z

.field public final g:D

.field public final h:Ljava/util/ArrayList;

.field public final i:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->c:Lcom/google/android/gms/cast/LaunchOptions;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->d:Z

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzev;->zzb()Lcom/google/android/gms/internal/cast/zzev;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->e:Lcom/google/android/gms/internal/cast/zzev;

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->f:Z

    .line 28
    .line 29
    const-wide v1, 0x3fa99999a0000000L    # 0.05000000074505806

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    iput-wide v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->g:D

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->h:Ljava/util/ArrayList;

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->i:Z

    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzev;->zzb()Lcom/google/android/gms/internal/cast/zzev;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzev;->zzb()Lcom/google/android/gms/internal/cast/zzev;

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->e:Lcom/google/android/gms/internal/cast/zzev;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/cast/framework/CastOptions;->B:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzev;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lcom/google/android/gms/cast/framework/CastOptions;->z:Lcom/google/android/gms/cast/framework/zzj;

    .line 12
    .line 13
    const-string v3, "use Optional.orNull() instead of Optional.or(null)"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/zzez;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object v4, Lcom/google/android/gms/cast/framework/CastOptions;->A:Lcom/google/android/gms/cast/framework/zzl;

    .line 19
    .line 20
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cast/zzez;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-object/from16 v18, v2

    .line 24
    .line 25
    new-instance v2, Lcom/google/android/gms/cast/framework/CastOptions;

    .line 26
    .line 27
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->a:Ljava/lang/String;

    .line 28
    .line 29
    move-object/from16 v19, v4

    .line 30
    .line 31
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->b:Ljava/util/ArrayList;

    .line 32
    .line 33
    move-object v8, v1

    .line 34
    check-cast v8, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 35
    .line 36
    iget-object v15, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->h:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->c:Lcom/google/android/gms/cast/LaunchOptions;

    .line 39
    .line 40
    iget-boolean v7, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->d:Z

    .line 41
    .line 42
    iget-boolean v9, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->f:Z

    .line 43
    .line 44
    iget-wide v10, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->g:D

    .line 45
    .line 46
    const/4 v14, 0x0

    .line 47
    iget-boolean v1, v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->i:Z

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    const/16 v17, 0x0

    .line 53
    .line 54
    move/from16 v16, v1

    .line 55
    .line 56
    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/cast/framework/CastOptions;-><init>(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/google/android/gms/cast/LaunchOptions;ZLcom/google/android/gms/cast/framework/media/CastMediaOptions;ZDZZZLjava/util/ArrayList;ZZLcom/google/android/gms/cast/framework/zzj;Lcom/google/android/gms/cast/framework/zzl;)V

    .line 57
    .line 58
    .line 59
    return-object v2
.end method

.method public setCastMediaOptions(Lcom/google/android/gms/cast/framework/media/CastMediaOptions;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzev;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zzev;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->e:Lcom/google/android/gms/internal/cast/zzev;

    return-object p0
.end method

.method public setReceiverApplicationId(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
