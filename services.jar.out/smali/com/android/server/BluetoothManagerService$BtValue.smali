.class Lcom/android/server/BluetoothManagerService$BtValue;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BtValue"
.end annotation


# instance fields
.field mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field mPid:I

.field mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

.field mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;IILandroid/bluetooth/IBluetoothManagerCallback;Landroid/bluetooth/IQBluetoothManagerCallback;Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 2
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "adapterCallback"    # Landroid/bluetooth/IBluetoothManagerCallback;
    .param p5, "qadapterCallback"    # Landroid/bluetooth/IQBluetoothManagerCallback;
    .param p6, "stateCallback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1877
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1868
    iput v1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mUid:I

    .line 1869
    iput v1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mPid:I

    .line 1870
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1871
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 1872
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1878
    iput p2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mUid:I

    .line 1879
    iput p3, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mPid:I

    .line 1880
    iput-object p4, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1881
    iput-object p5, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 1882
    iput-object p6, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1883
    return-void
.end method


# virtual methods
.method getAdapterCallback()Landroid/bluetooth/IBluetoothManagerCallback;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v0
.end method

.method getCallbackCapacity()I
    .locals 2

    .prologue
    .line 1920
    const/4 v0, 0x0

    .line 1921
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    if-eqz v1, :cond_0

    .line 1922
    add-int/lit8 v0, v0, 0x1

    .line 1924
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    if-eqz v1, :cond_1

    .line 1925
    add-int/lit8 v0, v0, 0x1

    .line 1927
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    if-eqz v1, :cond_2

    .line 1928
    add-int/lit8 v0, v0, 0x1

    .line 1931
    :cond_2
    return v0
.end method

.method getQAdapterCallback()Landroid/bluetooth/IQBluetoothManagerCallback;
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    return-object v0
.end method

.method getStateCallback()Landroid/bluetooth/IBluetoothStateChangeCallback;
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    return-object v0
.end method

.method setAdapterCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 0
    .param p1, "adapterCallback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 1896
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1897
    return-void
.end method

.method setQAdapterCallback(Landroid/bluetooth/IQBluetoothManagerCallback;)V
    .locals 0
    .param p1, "qadapterCallback"    # Landroid/bluetooth/IQBluetoothManagerCallback;

    .prologue
    .line 1900
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    .line 1901
    return-void
.end method

.method setStateCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 0
    .param p1, "stateCallback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 1904
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1905
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1887
    const-string v0, ""

    .line 1888
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BtValue{uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAdapterCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mAdapterCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mQAdapterCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mQAdapterCallback:Landroid/bluetooth/IQBluetoothManagerCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mStateCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$BtValue;->mStateCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1892
    return-object v0
.end method
