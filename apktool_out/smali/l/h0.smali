.class public final Ll/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Ll/k0;


# direct methods
.method public constructor <init>(Ll/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/h0;->b:Ll/k0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ll/h0;->b:Ll/k0;

    .line 2
    .line 3
    iget-object p4, p1, Ll/k0;->Q:Ll/o0;

    .line 4
    .line 5
    invoke-virtual {p4, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6
    .line 7
    .line 8
    iget-object p4, p1, Ll/k0;->Q:Ll/o0;

    .line 9
    .line 10
    invoke-virtual {p4}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    if-eqz p4, :cond_0

    .line 15
    .line 16
    iget-object p4, p1, Ll/k0;->Q:Ll/o0;

    .line 17
    .line 18
    iget-object p5, p1, Ll/k0;->N:Landroid/widget/ListAdapter;

    .line 19
    .line 20
    invoke-interface {p5, p3}, Landroid/widget/Adapter;->getItemId(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Ll/l1;->dismiss()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
