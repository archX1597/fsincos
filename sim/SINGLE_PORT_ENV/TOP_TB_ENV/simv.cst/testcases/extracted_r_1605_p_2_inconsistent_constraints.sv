class c_1605_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1605_2;
    c_1605_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z1z11010zzzx0x1xxx1x1x0zzxx0xzxxzxxxzxxxxzzxxxzzzzzxzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram