.class public Lflix/com/vision/activities/GIFActivity;
.super Le/v;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public b:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_gifactivity:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->install_android:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/activities/GIFActivity;->e:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    sget p1, Lflix/com/vision/R$id;->install_firetv:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    iput-object p1, p0, Lflix/com/vision/activities/GIFActivity;->b:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iget-object p1, p0, Lflix/com/vision/activities/GIFActivity;->e:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    new-instance v0, Ly4/P;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p0, v1}, Ly4/P;-><init>(Lflix/com/vision/activities/GIFActivity;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lflix/com/vision/activities/GIFActivity;->b:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    new-instance v0, Ly4/P;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-direct {v0, p0, v1}, Ly4/P;-><init>(Lflix/com/vision/activities/GIFActivity;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
