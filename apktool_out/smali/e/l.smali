.class public final Le/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Le/q;

.field public final synthetic e:Le/n;


# direct methods
.method public constructor <init>(Le/n;Le/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/l;->e:Le/n;

    .line 5
    .line 6
    iput-object p2, p0, Le/l;->b:Le/q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    iget-object p1, p0, Le/l;->e:Le/n;

    .line 2
    .line 3
    iget-object p2, p1, Le/n;->o:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    .line 5
    iget-object p4, p0, Le/l;->b:Le/q;

    .line 6
    .line 7
    iget-object p4, p4, Le/q;->b:Le/c0;

    .line 8
    .line 9
    invoke-interface {p2, p4, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p1, Le/n;->s:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p4}, Le/c0;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
