.class public final synthetic LC4/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Lm1/V;


# direct methods
.method public synthetic constructor <init>(Lm1/V;II)V
    .locals 0

    .line 1
    iput p3, p0, LC4/a0;->b:I

    iput-object p1, p0, LC4/a0;->f:Lm1/V;

    iput p2, p0, LC4/a0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget p1, p0, LC4/a0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC4/a0;->f:Lm1/V;

    .line 7
    .line 8
    check-cast p1, LC4/o0;

    .line 9
    .line 10
    iget-object p1, p1, LC4/o0;->e:Lflix/com/vision/activities/MainActivity;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget v0, p0, LC4/a0;->e:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lflix/com/vision/activities/MainActivity;->longClickMovie(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :pswitch_0
    iget-object p1, p0, LC4/a0;->f:Lm1/V;

    .line 22
    .line 23
    check-cast p1, LC4/c0;

    .line 24
    .line 25
    iget-object v0, p1, LC4/c0;->e:LU4/l;

    .line 26
    .line 27
    iget-object p1, p1, LC4/c0;->f:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget v1, p0, LC4/a0;->e:I

    .line 30
    .line 31
    invoke-interface {v0, v1, p1}, LU4/l;->onLongPress(ILjava/util/ArrayList;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
