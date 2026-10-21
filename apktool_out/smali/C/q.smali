.class public final synthetic LC/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, LC/q;->b:I

    iput-object p1, p0, LC/q;->f:Ljava/lang/Object;

    iput p2, p0, LC/q;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, LC/q;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC/q;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 9
    .line 10
    iget v1, p0, LC/q;->e:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->k(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, LC/q;->f:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, LT4/r;

    .line 19
    .line 20
    iget-object v0, v0, LT4/r;->d:Landroid/app/ProgressDialog;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget v1, p0, LC/q;->e:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, LC/q;->f:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/view/View;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iget v3, p0, LC/q;->e:I

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c(Landroid/view/View;ZI)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :pswitch_2
    iget-object v0, p0, LC/q;->f:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, LC4/Z;

    .line 54
    .line 55
    iget-object v1, v0, LC4/Z;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, LC4/Z;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    iget v1, p0, LC/q;->e:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_3
    iget-object v0, p0, LC/q;->f:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, LC/r;

    .line 71
    .line 72
    iget v1, p0, LC/q;->e:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, LC/r;->onFontRetrievalFailed(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
