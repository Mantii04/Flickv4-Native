.class public final LS4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:LS4/o;


# direct methods
.method public constructor <init>(LS4/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS4/f;->b:LS4/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LS4/f;->b:LS4/o;

    .line 2
    .line 3
    iget-object p1, p1, LS4/o;->q:Landroid/widget/Spinner;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/Spinner;->performClick()Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
