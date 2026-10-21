.class public final synthetic Lcom/google/android/gms/internal/cast/zzaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/cast/zzar;

.field public final synthetic zzb:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzar;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaq;->zza:Lcom/google/android/gms/internal/cast/zzar;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzb:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaq;->zza:Lcom/google/android/gms/internal/cast/zzar;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzar;->zzc:Lcom/google/android/gms/internal/cast/zzas;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzas;->zzc(Lcom/google/android/gms/internal/cast/zzas;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzaq;->zzb:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/ViewGroup;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzar;->zzc:Lcom/google/android/gms/internal/cast/zzas;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzar;->zzc:Lcom/google/android/gms/internal/cast/zzas;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzas;->zza(Lcom/google/android/gms/internal/cast/zzas;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzas;->zza(Lcom/google/android/gms/internal/cast/zzas;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;->onOverlayDismissed()V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzar;->zzc:Lcom/google/android/gms/internal/cast/zzas;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzas;->zzb(Lcom/google/android/gms/internal/cast/zzas;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method
