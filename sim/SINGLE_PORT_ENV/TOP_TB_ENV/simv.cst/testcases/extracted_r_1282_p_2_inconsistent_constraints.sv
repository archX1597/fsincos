class c_1282_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1282_2;
    c_1282_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1x10zz11zzxz1xzz1z111xx00x11zzxzzxzzxzxxzxxxzxxxzxzxxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
