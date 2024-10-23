class c_1746_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1746_2;
    c_1746_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x010x0zxx10z0x01zz100zzxz0z1xzzzxxzzzxxzxxxzzxxxzzxxzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
