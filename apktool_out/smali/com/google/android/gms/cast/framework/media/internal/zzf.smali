.class public final Lcom/google/android/gms/cast/framework/media/internal/zzf;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final a:Lcom/google/android/gms/cast/framework/media/internal/zzi;

.field public final b:Lcom/google/android/gms/cast/framework/media/internal/zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "FetchBitmapTask"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzf;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZJIIILcom/google/android/gms/cast/framework/media/internal/zzb;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    move-object/from16 p4, p10

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzf;->b:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Lcom/google/android/gms/cast/framework/media/internal/zze;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/google/android/gms/cast/framework/media/internal/zze;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzf;)V

    .line 15
    .line 16
    .line 17
    const-wide/32 v6, 0x200000

    .line 18
    .line 19
    .line 20
    const/4 v8, 0x5

    .line 21
    const/4 v5, 0x0

    .line 22
    const/16 v9, 0x14d

    .line 23
    .line 24
    const/16 v10, 0x2710

    .line 25
    .line 26
    move-object v1, p0

    .line 27
    move v3, p2

    .line 28
    move v4, p3

    .line 29
    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/cast/zzag;->zze(Landroid/content/Context;Landroid/os/AsyncTask;Lcom/google/android/gms/cast/framework/media/internal/zzk;IIZJIII)Lcom/google/android/gms/cast/framework/media/internal/zzi;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzf;->a:Lcom/google/android/gms/cast/framework/media/internal/zzi;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/cast/framework/media/internal/zzf;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    check-cast p1, [Landroid/net/Uri;

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_2

    .line 8
    .line 9
    aget-object p1, p1, v0

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzf;->a:Lcom/google/android/gms/cast/framework/media/internal/zzi;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-object v3

    .line 19
    :cond_1
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzi;->zze(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    sget-object v1, Lcom/google/android/gms/cast/framework/media/internal/zzf;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v5, "doFetch"

    .line 31
    .line 32
    aput-object v5, v4, v0

    .line 33
    .line 34
    const-string v0, "zzi"

    .line 35
    .line 36
    aput-object v0, v4, v2

    .line 37
    .line 38
    const-string v0, "Unable to call %s on %s."

    .line 39
    .line 40
    invoke-virtual {v1, p1, v0, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-object v3
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzf;->b:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzb(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
