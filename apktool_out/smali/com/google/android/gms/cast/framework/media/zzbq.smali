.class final Lcom/google/android/gms/cast/framework/media/zzbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbq;->b:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbq;->b:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->z0:Landroid/app/AlertDialog;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->z0:Landroid/app/AlertDialog;

    .line 12
    .line 13
    :cond_0
    return-void
.end method
