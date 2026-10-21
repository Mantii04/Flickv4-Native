.class public final Ll/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ll/K;


# direct methods
.method public constructor <init>(Ll/K;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/J;->a:Ll/K;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/J;->a:Ll/K;

    .line 2
    .line 3
    invoke-static {v0}, Ll/K;->a(Ll/K;)Landroid/view/textclassifier/TextClassifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/J;->a:Ll/K;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ll/K;->b(Ll/K;Landroid/view/textclassifier/TextClassifier;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
