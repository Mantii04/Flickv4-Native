.class public final Lcom/google/android/gms/cast/Cast$CastOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CastOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/cast/CastDevice;

.field public final e:Lcom/google/android/gms/cast/Cast$Listener;

.field public final f:Landroid/os/Bundle;

.field public final j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->a:Lcom/google/android/gms/cast/CastDevice;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->b:Lcom/google/android/gms/cast/CastDevice;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->b:Lcom/google/android/gms/cast/Cast$Listener;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->e:Lcom/google/android/gms/cast/Cast$Listener;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->c:Landroid/os/Bundle;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->f:Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->j:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/Cast$CastOptions;

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
    check-cast p1, Lcom/google/android/gms/cast/Cast$CastOptions;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/gms/cast/Cast$CastOptions;->b:Lcom/google/android/gms/cast/CastDevice;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->b:Lcom/google/android/gms/cast/CastDevice;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->f:Landroid/os/Bundle;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/google/android/gms/cast/Cast$CastOptions;->f:Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->checkBundlesEquality(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->j:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/google/android/gms/cast/Cast$CastOptions;->j:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->j:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->b:Lcom/google/android/gms/cast/CastDevice;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->f:Landroid/os/Bundle;

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    new-array v5, v5, [Ljava/lang/Object;

    .line 14
    .line 15
    aput-object v3, v5, v0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v4, v5, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput-object v1, v5, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-object v2, v5, v0

    .line 25
    .line 26
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
.end method
