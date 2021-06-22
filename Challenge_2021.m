%function Challenge_2021




- read_dx_mapping --> dx_mapping_scored.csv + dx_mapping_unscored.csv (in evaluation-2021-main_01)
      (crea: SNOMED_code) 
      
- save SNOMED_code SNOMED_code

- list_Challenge_databases

- cre_list_files

- my_train_model

   team_training_code
     get_classes_My
     for i:K_ini,K_end
        load_challenge_data
        get_leads
      * examine_ECG_save_IMG
           extract_data_from_header
           new_ECG_preproc_21
           save_Leads_5G_ECG_IMG
      end 
    
    train_02L
    
     
    
    
    
%----------------------------------    
    
    
driver_train_CNN
   select_train_rec_leads
   extend_train  %   opt_EXTEND=0: yes   1:no_extend
   
% experiments in SUBM_B1

12L : tutti i files non nulli: 86722
06L  : K_max=600) N=13520  --> List21_13K



%---------------------- per preparare Header files in un'unica directory --------------------------
driver_train_header(dir_NewD1,'pippo',1,0,2)  2: copy of original header files

%------------------------------------------------

  test_Challenge_tst_F_OK    : esamina NET_tot in memoria e salva in NET_tot.file_name 
                             : i risultati della classificazione NET_tot.CNN(*).net
% evaluate scores
                             
MY_mod = py.importlib.import_module('my_new_code2');py.importlib.reload(MY_mod);
modCNC23 = py.importlib.import_module('evaluate_model');py.importlib.reload(modCNC23);

                             
 check_challenge_score
       dir_03L = 'RIS_03L_I3F2_06_04_11';
       [L1_03L,L2_03L]=cre_header_out_list_21(dir_CINC20_OR_HEA,dir_03L);
       cc_03L=modCNC23.evaluate_model(L1_03L,L2_03L);

       - my_evaluate_model(cc_03L,1,dir_03L, numel(L2_03L));   ---> summary  
       - my_evaluate_model(cc_03L,2,dir_03L, numel(L2_03L));   ---> extended summary 
      ( - my_evaluate_model(cc_03L,3,dir_03L, numel(L2_03L));   ---> list all output )
   
    