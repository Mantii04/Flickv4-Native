.class final Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:J

.field public final synthetic e:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;->e:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iput-wide p2, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;->b:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;->b:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;->e:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 4
    .line 5
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onForwardClicked(Landroid/view/View;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
