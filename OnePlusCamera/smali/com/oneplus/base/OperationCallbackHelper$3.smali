.class Lcom/oneplus/base/OperationCallbackHelper$3;
.super Ljava/lang/Object;
.source "OperationCallbackHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/OperationCallbackHelper;->callOnStarted(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/base/OperationCallbackHelper;

.field final synthetic val$arg:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/base/OperationCallbackHelper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lcom/oneplus/base/OperationCallbackHelper$3;, "Lcom/oneplus/base/OperationCallbackHelper.3;"
    iput-object p1, p0, Lcom/oneplus/base/OperationCallbackHelper$3;->this$0:Lcom/oneplus/base/OperationCallbackHelper;

    iput-object p2, p0, Lcom/oneplus/base/OperationCallbackHelper$3;->val$arg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    .local p0, "this":Lcom/oneplus/base/OperationCallbackHelper$3;, "Lcom/oneplus/base/OperationCallbackHelper.3;"
    iget-object v0, p0, Lcom/oneplus/base/OperationCallbackHelper$3;->this$0:Lcom/oneplus/base/OperationCallbackHelper;

    # getter for: Lcom/oneplus/base/OperationCallbackHelper;->m_Callback:Lcom/oneplus/base/OperationCallback;
    invoke-static {v0}, Lcom/oneplus/base/OperationCallbackHelper;->access$000(Lcom/oneplus/base/OperationCallbackHelper;)Lcom/oneplus/base/OperationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/OperationCallbackHelper$3;->val$arg:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/oneplus/base/OperationCallback;->onStarted(Ljava/lang/Object;)V

    .line 100
    return-void
.end method
