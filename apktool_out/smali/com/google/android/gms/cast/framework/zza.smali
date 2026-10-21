.class public final synthetic Lcom/google/android/gms/cast/framework/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastContext;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/cast/framework/CastButtonFactory;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getMergedSelector()Lf1/L;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    throw v0

    .line 15
    :cond_0
    throw v0
.end method
