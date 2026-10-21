.class public final synthetic LH3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/A;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, LH3/c;->b:I

    iput-object p1, p0, LH3/c;->f:Ljava/lang/Object;

    iput p2, p0, LH3/c;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, LH3/c;->b:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LH3/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$State;

    iget v1, p0, LH3/c;->e:I

    invoke-static {v0, v1, p1}, Landroidx/media3/common/SimpleBasePlayer;->O(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Player$Listener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LH3/c;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/MediaItem;

    iget v1, p0, LH3/c;->e:I

    invoke-static {v0, v1, p1}, Landroidx/media3/common/SimpleBasePlayer;->m(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public perform(Landroid/view/View;LN/s;)Z
    .locals 0

    .line 1
    sget p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->G:I

    .line 2
    .line 3
    iget-object p1, p0, LH3/c;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 6
    .line 7
    iget p2, p0, LH3/c;->e:I

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setState(I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1
.end method
