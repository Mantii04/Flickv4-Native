.class public final synthetic Ly4/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/b0;->b:I

    iput-object p1, p0, Ly4/b0;->e:Lflix/com/vision/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Ly4/b0;->e:Lflix/com/vision/activities/MainActivity;

    .line 2
    .line 3
    iget v0, p0, Ly4/b0;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lflix/com/vision/activities/MainActivity;->t:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget p2, Lflix/com/vision/activities/MainActivity;->T:I

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :pswitch_0
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    :try_start_0
    iget-object p2, p1, Lflix/com/vision/activities/MainActivity;->v:Landroid/view/MenuItem;

    .line 35
    .line 36
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-object p1, p1, Lflix/com/vision/activities/MainActivity;->y:Landroidx/appcompat/widget/Toolbar;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    :cond_1
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
