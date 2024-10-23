class c_1261_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1261_2;
    c_1261_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11zx101101z0zz000zz1xxzzxx0xzxxxzzxxzxxxzzzzxxxzxxzzzzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
